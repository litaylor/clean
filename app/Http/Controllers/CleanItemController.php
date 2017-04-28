<?php

namespace App\Http\Controllers;

use App\CleanItem;
use Illuminate\Http\Request;
use illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class CleanItemController extends Controller
{
  public function index () {
    // GET /cleanItems
    // list all cleanItems
    $cleanItems = CleanItem::all();
    return Response::json($cleanItems);
  }

  public function create (Request $request) {
    // POST /cleanItems
    // create new cleanItem
    CleanItem::create($request->all());
    return Response::json(['cleanItem' => 'created']);
  }

  public function show ($id) {
    // GET /cleanItems
    // show all cleanItems
    $cleanItem = CleanItem::find($id);
    return Response::json($cleanItem);
  }

  public function update (Request $request, $id) {
    // PUT /cleanItems
    // update cleanItem
    $cleanItem = CleanItem::find($id);
    $cleanItem->update($request->all());
    return Response::json(['cleanItem' => 'updated']);
  }

  public function destroy ($id) {
    // DELETE /cleanItems
    // destroy cleanItem
    $cleanItem = CleanItem::find($id);
    $cleanItem->delete();
    return Response::json(['cleanItem' => 'deleted']);
  }

  public function post_upload () {

    return Response::json(['file' => 'uploaded']);


    // $file = Input::file('file');
    // $destinationPath = '/uploads';
    // // If the uploads fail due to file system, you can try doing public_path().'/uploads'
    // $filename = str_random(12);
    // //$filename = $file->getClientOriginalName();
    // //$extension =$file->getClientOriginalExtension();
    // $upload_success = Input::file('file')->move($destinationPath, $filename);
    //
    // if( $upload_success ) {
    //    return Response::json('success', 200);
    // } else {
    //    return Response::json('error', 400);
    // }

	}

}
