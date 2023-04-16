<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProjectContent;
use App\Models\Project;
use App\Models\ProjectView;
use App\Models\ProjectWidget;

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

        Project::create([
            'nom' => $nomP,
            'description' => $descriptionP,
            'miniature' => $miniatureP
        ]);

        $i = 0;

        foreach($sizeAndPosition as $view){
            var_dump($view);
            ProjectView::create([
                'titre' => 'titre view',
                'haut' => $view['top'],
                'hauteur' => $view['height'],
                'css_id' => $view['id']
            ]);
            $i += 1;
            foreach($view['widgets'] as $widget){
                ProjectWidget::create([
                    'titre' => 'titre widget',
                    'haut' => $widget['top'],
                    'gauche' => $widget['left'],
                    'hauteur' => $widget['height'],
                    'largeur' => $widget['width'],
                    'css_id' => $widget['id']
                ]);
            }
        };


        // Perform any necessary processing with the data
        // ...

        // Return a response to the client
        return response()->json([
            'status' => 'success',
            'message' => 'Data saved successfully',
            'data' => $view
        ]);
    }
}
