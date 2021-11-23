<?php

namespace App\Http\Controllers;

use App\Models\Qr;
use Illuminate\Http\Request;
use Illuminate\Database\QueryException;

class QrController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('elements.createqr');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $fields=[
            // unique verifica si el correo ya existe. qrs es la tabla
            'Qr' => 'required|unique:qrs|string|max:20',
        ];

        $message=[
            'required' => 'El Codigo es requerido',
            'unique' => 'Error',
        ];
        $this->validate($request, $fields, $message);


        $dateQrs = request()->except('_token');
        // Se toma el modelo Element y se insertan los datos recibidos en la variable dateElements
        Qr::insert($dateQrs);
        return redirect('qrs/create')->with('message', 'Registro Exitoso.');
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Qr  $qr
     * @return \Illuminate\Http\Response
     */
    public function show(Qr $qr)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Qr  $qr
     * @return \Illuminate\Http\Response
     */
    public function edit(Qr $qr)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Qr  $qr
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Qr $qr)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Qr  $qr
     * @return \Illuminate\Http\Response
     */
    public function destroy(Qr $qr)
    {
        //
    }
}
