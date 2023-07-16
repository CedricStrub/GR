<?php

namespace App\Http\Controllers;

use stdClass;
use App\Models\Project;
use App\Models\File;
use App\Models\ProjectView;
use Illuminate\Http\Request;
use App\Models\ProjectWidget;
use App\Models\ProjectContent;
use Illuminate\Support\Facades\Auth;
use Elasticsearch\Client;

class ControllerProject extends Controller
{
    public function save(Request $request){
        // Get the raw JSON data from the request
        $jsonData = $request->getContent();
        
        // Decode the JSON data
        $sizeAndPosition = json_decode($jsonData, true);

        $nomP = "projet";
        $descriptionP = "description";
        $miniatureP = "miniature.png";

        
        
        $project = Project::find($sizeAndPosition['project']);
        $project->nom = $sizeAndPosition['nom'] ?? null;
        $project->description = $sizeAndPosition['description'] ?? null;
        $project->miniature = $sizeAndPosition['miniature'] ?? null;
        $project->save();

        if($project != null){
            $content = ProjectContent::where('project',$project->id)->orderBy('view', 'asc')->get();
            $uniqueViews = $content->unique('view');

            foreach($uniqueViews as $view){
                $Pview = ProjectView::find($view['view']);
                $temp = $sizeAndPosition['views'][$Pview->css_id];
                $Pview->titre = $temp['title'];
                $Pview->haut = $temp['top'];
                $Pview->hauteur = $temp['height'];
                $Pview->css_id = $temp['id'];
                $Pview->save();
                if($temp['widgets']){
                    $widgetsInThisView = $content->where('view', $view['view']);
                    foreach($widgetsInThisView as $widgetContent){
                        $widget = ProjectWidget::find($widgetContent['widget']);
                        if($widget){
                            foreach($temp['widgets'] as $tempWidget){
                                if($tempWidget['id'] == $widget->css_id){
                                    $widget->titre = 'titre widget';
                                    $widget->haut = $tempWidget['top'];
                                    $widget->gauche = $tempWidget['left'];
                                    $widget->hauteur = $tempWidget['height'];
                                    $widget->largeur = $tempWidget['width'];
                                    $widget->css_id = $tempWidget['id'];
                                    $widget->type = $tempWidget['type'];
                                    $widget->save();
                                    break;
                                }
                            }
                        }else{
                            foreach($temp['widgets'] as $tempWidget){
                                ProjectWidget::create([
                                'titre' => 'titre widget',
                                'haut' => $tempWidget['top'],
                                'gauche' => $tempWidget['left'],
                                'hauteur' => $tempWidget['height'],
                                'largeur' => $tempWidget['width'],
                                'css_id' => $tempWidget['id'],
                                'type' => $tempWidget['type'],
                                ]);
                            }
                        }
                    }
                }
            }
        }
    }

    public function createNewProject(Request $request) {
        $uuid = $this->uuid(null);
        $request->session()->put('project_uuid', $uuid);
        $request->uuid = $uuid;
        
        $project = $this->makeProject($request);
        $projectId = $project->getData()->id;
        
        return redirect()->route('project', ['id' => $projectId]);
    }

    public function checkProject(Request $request) {
        if($request->session()->has('project_uuid')){
            $uuid = $request->session()->get('project_uuid');
            $id = Project::where('uuid',$uuid)->get()->first()->id;
            return $this->loadProject($id);
        } else {
            return $this->createNewProject($request);
        }
    }

    public function newProject(Request $request,$uuid){

        $request->uuid = $uuid;

        $project = $this->makeProject($request);
        $project = $project->getData()->id;

        return view('project', ['project' => $project,'result' => true, 'isDirty' => false]);
    }

    public function loadProject($id){
        $result = $this->load($id);

        return view('project', ['project' => $id,'result' => $result,'isDirty' => false]);
    }


    public function makeProject(Request $request){

        $user = Auth::user()->id;

        $p = Project::create([
            'nom' => $request->nom ?? null,
            'description' => $request->description ?? null,
            'miniature' => $request->miniature ?? null,
            'uuid' => $request->uuid,
            'author' => $user
        ]);

        return response()->json(['id' => $p->id], 200);
    }

    public function makeView(Request $request){

        $project = $request->project;
        $view = $request->view;

        $v = ProjectView::create([
            'titre' => 'titre view',
            'haut' => $view['top'],
            'hauteur' => $view['height'],
            'css_id' => $view['id'],
            'project' => $project
        ]);

        ProjectContent::create([
            'project' => $project,
            'view' => $v['id']
        ]);
        return response()->json(['id' => $v->id], 200);
    }

    public function removeView(Request $request){
        $view = ProjectView::where('project',$request->project)->where('css_id',$request->view['id']);
        $v = $view->get()->first();
        
        $content = ProjectContent::where('project',$request->project)->where('view',$v->id);
        $c = $content->get();
        
        if($c[0]->widget != null){
            foreach($c as $pc){
                $pw = ProjectWidget::find($pc->widget);
                $pw->delete();
            }
        }

        $content->delete();
        $view->delete();
    }

    public function makeWidget(Request $request){
        $project = $request->project;
        $view = $request->view;
        $widget = $request->widget;
        $file = File::find($request->file);

        $w = ProjectWidget::where('project',$project)->where('css_id',$request->widget['id'])->get()->first();
        if($w){
            $w->titre = 'titre widget';
            $w->haut = $widget['top'];
            $w->gauche = $widget['left'];
            $w->hauteur = $widget['height'];
            $w->largeur = $widget['width'];
            $w->css_id = $widget['id'];
            $w->type = $widget['type'];
            $w->project = $project;
            $w->content = $request->file;
            $w->save();
        }else{
            $w = ProjectWidget::create([
                'titre' => 'titre widget',
                'haut' => $widget['top'],
                'gauche' => $widget['left'],
                'hauteur' => $widget['height'],
                'largeur' => $widget['width'],
                'css_id' => $widget['id'],
                'type' => $widget['type'],
                'project' => $project,
                'content' => $request->file,
            ]);
        }
        

        $v = ProjectView::where('project', '=', $project)->where('css_id','=',$view)->get()->first();
        $pc = ProjectContent::where('project', '=', $project)->where('view','=',$v['id'])->where('widget','=',null)->get()->first();
        if($pc){
            $pc->widget = $w['id'];
            $pc->save();
        }else{
            ProjectContent::create([
                'project' => $project,
                'view' => $v['id'],
                'widget' => $w['id']
            ]);
        }
        
        return response()->json(['id' => $w->id, 'widget' => $w, 'view' => $v], 200);
    }

    public function removeWidget(Request $request){
        $widget = ProjectWidget::where('project',$request->project)->where('css_id',$request->widget['id']);
        $w = $widget->get()->first()->content;
        $file = File::find($w);
        $path = '../public/images/' . $file->filename;
        $msg = '';

        if (file_exists($path)) {
            if (unlink($path)) {
                $msg = 'File deleted successfully';
            } else {
                $msg = 'An error occurred while trying to delete the file';
            }
        } else {
            $msg = 'File not found';
        }
        echo $msg;
        $file->delete();
        $widget->delete();
    }

    public function load($id){
        $project = Project::find($id);
    
        $views = ProjectView::where('project', $id)->get();
        $min = File::find($project->miniature);
        $result = [];
        $p = [
            'project' => $project->id,
            'nom' => $project->nom,
            'description' => $project->description,
            'miniature' => $project->miniature,  
            'URLminiature' => $min->filename ?? 'cm-image.png'
        ];
        $result []= $p;
        if($views->isEmpty() == true){
            return true;
        }
    
        foreach ($views as $view) {
            $viewId = $view->css_id;
            $result[$viewId] = [];
            $result[$viewId]['title'] = $view->titre;
            $result[$viewId]['id'] = $view->css_id;
            $result[$viewId]['top'] = $view->haut;
            $result[$viewId]['height'] = $view->hauteur;
            $result[$viewId]['state'] = 'locked';
    
            // Fetch related content
            $contents = ProjectContent::where('project', $id)->where('view', $view->id)->get();

            $result[$viewId]['widgets'] = [];
    
            foreach ($contents as $content) {
                if ($content->widget !== null) {
                    $widget = ProjectWidget::find($content->widget);
                    $widgetContent = File::find($widget->content);
    
                    $widgetObj = [];
                    $widgetObj['view'] = $view->css_id;
                    $widgetObj['id'] = $widget->css_id;
                    $widgetObj['left'] = $widget->gauche;
                    $widgetObj['top'] = $widget->haut;
                    $widgetObj['width'] = $widget->largeur;
                    $widgetObj['height'] = $widget->hauteur;
                    $widgetObj['content'] = $widget->content;
                    $widgetObj['type'] = $widgetContent->type;
                    $widgetObj['filename'] = $widgetContent->filename;
                    $widgetObj['state'] = 'locked';
    
                    $result[$viewId]['widgets'][] = $widgetObj;
                    
                }
            }
        }
        return $result;
    }
    
}
