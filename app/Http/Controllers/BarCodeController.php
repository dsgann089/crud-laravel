<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BarCodeController extends Controller
{
    //
    // index

    public function index()
    {
        $code = 1;
        return view('elements.barcode', compact('code'));
    }

    public function edit(Request $request)
    {
        //
        $code = request()->except('_token','_method','GET');

        return view('elements.barcode', compact('code'));

        //return response()->json($code);
    }

}
