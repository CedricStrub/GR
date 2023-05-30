<?php

namespace App\Http\Controllers;

use stdClass;
use App\Models\Project;
use App\Models\ProjectView;
use Illuminate\Http\Request;
use App\Models\ProjectWidget;
use App\Models\ProjectContent;

class ControllerProject extends Controller
{
    public function save(Request $request){
        // Get the raw JSON data from the request
        $jsonData = $request->getContent();
        
        // Decode the JSON data
        $sizeAndPosition = json_decode($jsonData, true);

        // Dump the data for debugging
        // var_dump($sizeAndPosition);
        // $data = $sizeAndPosition['view_0']['top'];

        $nomP = "projet";
        $descriptionP = "description";
        $miniatureP = "miniature.png";

        $p = Project::create([
            'nom' => $nomP,
            'description' => $descriptionP,
            'miniature' => $miniatureP
        ]);
        $i = 0;

        foreach($sizeAndPosition as $view){
            var_dump($p['id']);
            $pv = ProjectView::create([
                'titre' => 'titre view',
                'haut' => $view['top'],
                'hauteur' => $view['height'],
                'css_id' => $view['id'],
                'project' => $p['id']
            ]);
            $i += 1;
            if($view['widgets'] == null){
                ProjectContent::create([
                    'project' => $p['id'],
                    'view' => $pv['id']
                ]);
            }else{
                foreach($view['widgets'] as $widget){
                    $pw =ProjectWidget::create([
                        'titre' => 'titre widget',
                        'haut' => $widget['top'],
                        'gauche' => $widget['left'],
                        'hauteur' => $widget['height'],
                        'largeur' => $widget['width'],
                        'css_id' => $widget['id'],
                        'project' => $p['id']
                    ]);
                    
                    ProjectContent::create([
                        'project' => $p['id'],
                        'view' => $pv['id'],
                        'widget' => $pw['id']
                    ]);
                }
            }
        };

        // Return a response to the client
        return response()->json([
            'status' => 'success',
            'message' => 'Data saved successfully',
            'data' => $view
        ]);
    }

    public function newProject(Request $request){

        $request->uuid = $this->uuid(null);

        $project = $this->makeProject($request);
        $project = $project->getData()->id;

        return view('project', ['project' => $project]);
    }

    public function makeProject(Request $request){

        $p = Project::create([
            'nom' => $request->nom ?? null,
            'description' => $request->description ?? null,
            'miniature' => $request->miniature ?? null,
            'uuid' => $request->uuid
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

    public function makeWidget(Request $request){
        $project = $request->project;
        $view = $request->view;
        $widget = $request->widget;

        $w = ProjectWidget::create([
            'titre' => 'titre widget',
            'haut' => $widget['top'],
            'gauche' => $widget['left'],
            'hauteur' => $widget['height'],
            'largeur' => $widget['width'],
            'css_id' => $widget['id'],
            'project' => $project
        ]);
        $v = ProjectView::where('project', '=', $project)->where('css_id','=',$view)->get()[0];
        ProjectContent::create([
            'project' => $project,
            'view' => $v['id'],
            'widget' => $w['id']
        ]);

        return response()->json(['id' => $w->id], 200);
    }

    public function load(Request $request){
        $id = $request->getContent();
        $project = Project::find($id);
    
        $views = ProjectView::where('project', $id)->get();
    
        $result = new stdClass();
    
        foreach ($views as $view) {
            $viewId = $view->css_id;
            $result->$viewId = new stdClass();
            $result->$viewId->id = $view->css_id;
            $result->$viewId->top = $view->haut;
            $result->$viewId->height = $view->hauteur;
            
            // Fetch related content
            $contents = ProjectContent::where('project', $id)->where('view', $view->id)->get();
    
            $result->$viewId->widgets = [];
    
            foreach ($contents as $content) {
                if ($content->widget !== null) {
                    $widget = ProjectWidget::find($content->widget);
    
                    $widgetObj = new stdClass();
                    $widgetObj->id = $widget->css_id;
                    $widgetObj->left = $widget->gauche;
                    $widgetObj->top = $widget->haut;
                    $widgetObj->width = $widget->largeur;
                    $widgetObj->height = $widget->hauteur;
    
                    array_push($result->$viewId->widgets, $widgetObj);
                }
            }
        }
    
        $jsonResult = json_encode($result, JSON_PRETTY_PRINT);
    
        return response()->json([
            'status' => 'success',
            'message' => 'Data loaded successfully',
            'project' => $project,
            'data' => json_decode($jsonResult)
        ]);
    }
}
