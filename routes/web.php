<?php

use Illuminate\Support\Facades\Route;
// Para usar el controlador primero debemos importarlo
use App\Http\Controllers\ElementController;
use App\Http\Controllers\Auth\EditController;
use App\Http\Controllers\QrController;
use App\Http\Controllers\BarCodeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    //Cuando el usuario escriba en la raiz esta lo debe llevar directamente al login
    return view('auth.login');
});
Route::get('/barcode', [BarcodeController::class, 'index']);
Route::get('/barcode/update', [BarcodeController::class, 'edit']);
Route::get('/search', 'App\Http\Controllers\ElementController@search')->name('search');
/*
// Para llamar una ruta que se encuentra en el controlador, usaremos el siguiendo comando:
Route::get('/elements/create', [ElementController::class, 'create']);
    //Cuando el usuario ingrese esa URL el sistema ingresara al metodo create que se encuentra
    // en el controlador ElementContoller.
*/

// Crea de forma automatica el acceso a todos los metodos que tenemos en la clase controlador.
Route::resource('elements', ElementController::class)->middleware('auth');
Auth::routes();
// Utilizamos el methodo resource para comunicarnos con todos los metodos del route list
Route::resource('users', EditController::class)->middleware('auth');
Auth::routes();

Route::resource('qrs', QrController::class)->middleware('auth');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Cuando el usuario se logue sera direccionado directamente a lo que es la pestaña del home
// Si no se loguea no podra ver la pestaña home
Route::group(['middleware' => 'auth'], function (){
   Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
});

Route::get('/index', [ElementController::class, 'index'])->name('index');

