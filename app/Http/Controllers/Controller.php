<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    function slugify($fileName) {
        // Remove the file extension and store it
        $fileExtension = pathinfo($fileName, PATHINFO_EXTENSION);
        $fileNameWithoutExtension = pathinfo($fileName, PATHINFO_FILENAME);
        
        // Replace non-alphabetical or non-numeric characters with a hyphen
        $slug = preg_replace('/[^A-Za-z0-9-]+/', '-', $fileNameWithoutExtension);
        
        return $slug . "." . $fileExtension;
    }

    function uuid($fileName){
        // Remove the file extension and store it
        $fileExtension = pathinfo($fileName, PATHINFO_EXTENSION);
        
        // Generate uuid
        $uuid = sprintf(
            '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
            mt_rand(0, 0xffff), mt_rand(0, 0xffff),
            mt_rand(0, 0xffff),
            mt_rand(0, 0x0fff) | 0x4000,
            mt_rand(0, 0x3fff) | 0x8000,
            mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0xffff)
        );

        return $uuid . "." . $fileExtension;
    }
}
