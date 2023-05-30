<?php

namespace App\Http\Controllers;

use App\Models\File;
use Illuminate\Http\Request;
use App\Models\ProjectWidget;

class FileUploadController extends Controller
{

    public function fileStore(Request $request)
    {
        $image = $request->file('file');
        $imageName = $image->getClientOriginalName();
        $slug = $this->slugify($imageName);
        
        $uuid = $this->uuid($imageName);
        $image->move(public_path('images'),$uuid);

        dd($request->input('project'));
        
        $widget = ProjectWidget::where('project','=',$request->project)->where('css_id','=',$request->widget)->get();
        dd($widget);
        $widget->content = $uuid;
        $widget->save();

        $imageUpload = new File();
        $imageUpload->original_filename = $slug;
        $imageUpload->filename = $uuid;
        $imageUpload->save();
        return response()->json(['success'=>$imageName]);
    }

    public function fileDestroy(Request $request)
    {
        $filename =  $request->get('filename');
        File::where('filename',$filename)->delete();
        $path=public_path().'/images/'.$filename;
        if (file_exists($path)) {
            unlink($path);
        }
        return $filename;  
    }
}
