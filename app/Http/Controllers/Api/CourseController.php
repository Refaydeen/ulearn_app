<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    //
    public function courseList(){

        return response()->json([
            'code' => 200,
            'msg' => 'My course is list is here',
            'data' => 'data is available'
        ], 200);

    }
}
