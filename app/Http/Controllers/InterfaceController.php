<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InterfaceController extends Controller
{

    public function setting(){

        $shortcut = [['name1','url1'],['name2','url2'],['name3','url3'],['name4','url4'],['name5','url5'],['name6','url6']];
        $context = ['bouton1','bouton2','bouton3'];

        return view('welcome',['shortcut' => $shortcut, 'context' => $context]);
    }



}
