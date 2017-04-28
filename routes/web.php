<?php

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

// Home route

Route::get('/', function () {
    return view('app');
});

// ITEMS ROUTES
// Collective (Show all items, create a new item)
Route::get('/items', 'CleanItemController@index');
Route::post('/items', 'CleanItemController@create');

// Singular (Show an item, update an item, destroy an item)
Route::get('/items/{id}', 'CleanItemController@show');
Route::put('/items/{id}', 'CleanItemController@update');
Route::delete('/items/{id}', 'CleanItemController@destroy');

// IMAGE UPLOADS
Route::any('/imageupload', function()
{
    $data = [];

    // echo config('imageupload.library');

    if (Request::hasFile('file')) {
        $data['result'] = Imageupload::upload(Request::file('file'));
        return view('app')->with('data',$data['result']);
    }

    return view('form')->with($data);
});
