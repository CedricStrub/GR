<?php

namespace App\Http\Controllers;

use App\Models\File;
use Illuminate\Http\Request;
use App\Models\ProjectWidget;
use finfo;

class FileUploadController extends Controller
{

    public function fileStore(Request $request)
    {
        $file = $request->file('file');

        $mime_type = $file->getClientMimeType();
        switch ($mime_type){
            case "image/png":
                $isValid = $this->isValidImage($file);
                if($isValid == true){
                    $idFile = $this->store($file,$mime_type,"images");
                }
                break;
            case "image/jpg":
                $isValid = $this->isValidImage($file);
                if($isValid == true){
                    $idFile = $this->store($file,$mime_type,"images");
                }
                break;
            case "image/jpeg":
                $isValid = $this->isValidImage($file);
                if($isValid == true){
                    $idFile = $this->store($file,$mime_type,"images");
                }
                break;
            case "image/gif":
                $isValid = $this->isValidImage($file);
                if($isValid == true){
                    $idFile = $this->store($file,$mime_type,"images");
                }
                break;
            case "text/plain":
                $idFile = $this->store($file,$mime_type,"texte");
                break;
            case "text/csv":
                $idFile = $this->store($file,$mime_type,"tableau");
                break;
        }
        return $idFile;
    }

    public function store($file,$type,$path){
        $fileName = $file->getClientOriginalName();
        $slug = $this->slugify($fileName);
        
        $uuid = $this->uuid($fileName);
        $file->move(public_path($path),$uuid);

        $fileUpload = new File();
        $fileUpload->original_filename = $slug;
        $fileUpload->filename = $uuid;
        $fileUpload->type = $type;
        $fileUpload->save();

        return $fileUpload->id;
    }


    public function isValidImage($file){
        $filePath = $file->getPathname();

        // Using finfo extension
        $finfo = new finfo(FILEINFO_MIME_TYPE);
        $mime_type = $finfo->file($filePath);

        // Verify file content with file signatures
        $allowedMimeTypes = [
            'image/jpeg' => [ "\xFF\xD8\xFF" ], // JPEG
            'image/png' => [ "\x89\x50\x4E\x47\x0D\x0A\x1A\x0A" ], // PNG
            'image/gif' => [ "\x47\x49\x46\x38" ], // GIF
            // Add more allowed file types and their signatures as needed
        ];

        $isValidMimeType = false;

        if (in_array($mime_type, array_keys($allowedMimeTypes))) {
            $fileContents = file_get_contents($filePath);

            foreach ($allowedMimeTypes[$mime_type] as $signature) {
                if (strncmp($fileContents, $signature, strlen($signature)) === 0) {
                    $isValidMimeType = true;
                    break;
                }
            }
        }

        if ($isValidMimeType) {
            // File MIME type is valid
            return true;
        } else {
            // File MIME type is not valid
            return false;
        }
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

    public function fileUpdate(Request $request){
        $data = $request->getContent();
        $data = json_decode($data, true);

        // dd($data['file']);

        $name = './texte/'.$data['file'];
        $handle = fopen($name, 'w') or die('Cannot open file:  '.$name);
        fwrite($handle, $data['content']);
        fclose($handle);
    }
}
