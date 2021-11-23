<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class EditController extends Controller
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
        return view('elements.creatuser');

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
        $dateUser = request()->except('_token');
        // Se toma el modelo Element y se insertan los datos recibidos en la variable dateElements
        User::insert($dateUser);
        return redirect('home');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $user=User::findOrFail($id);
        return view('elements.edit', compact('user'));

        //return response()->json($users);
    }
    //
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $datesUser = request()->except(['_token','_method','_updated_at','old_password','old2_password']);
        // Usamos esta lista para almacenar los datos haseados de la contraseña
        User::where('id','=',$id)->update([
            'name' => $datesUser['name'],
            'email' => $datesUser['email'],
            'password' => Hash::make($datesUser['password']),
        ]);

        $user=User::findOrFail($id);
        return view('elements.edit', compact('user'))->with('message', 'Usuario editado Correctamente.');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
