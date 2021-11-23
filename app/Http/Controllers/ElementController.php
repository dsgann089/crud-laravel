<?php

namespace App\Http\Controllers;

use App\Models\Element;
use Illuminate\Http\Request;

class ElementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $dates toma los datos que se encuentran en elements y los muestra
        $dates['elements']=Element::paginate(5);
        // se envian dates a la vista para mostrar el contenido de las tablas
        return view('elements.index', $dates);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //Nos permite ingresar a una ruta por medio de un controlador
        return view('elements.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Se crea una variable que toma todos los valores enviados por el request
        //$dateElements = request()->all();
        // Se toman todos los datos menos el token, que no se necesita.
        $dateElements = request()->except('_token');
        // Se toma el modelo Element y se insertan los datos recibidos en la variable dateElements
        Element::insert($dateElements);
        return redirect('elements')->with('message', 'Elemento Creado Correctamente.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Element  $element
     * @return \Illuminate\Http\Response
     */
    public function show(Element $element)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Element  $element
     * @return \Illuminate\Http\Response
     */
    public function edit(Element $element)
    {
        //
        return view('elements.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Element  $element
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Element $element)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Element  $element
     * @return \Illuminate\Http\Response
     */
    public function destroy(Element $element)
    {
        //
    }
    public function search(Request $request)
    {
        $Qr = $request->get('Qr');

        $elements = Element::orderBy('id' , 'DESC')
            ->where('Qr', 'LIKE', "%$Qr%")->paginate(5);

        return view('elements.index', compact('elements'));
    }

}
