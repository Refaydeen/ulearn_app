<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Exceptions\Handler;
class UserController extends Controller
{
    /**
     * Create User
     * @param Request $request
     * @return User 
     */
    public function login(Request $request)
    {
        
        try {
            //Validated
            $validateUser = Validator::make($request->all(), 
            [
                'avatar'=>'required',
                'type'=>'required',
                'name' => 'required',
                'email' => 'required',
                'open_id'=>'required',
            ]);

            if($validateUser->fails()){
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }
            //will have all the bvalues
            $validated=$validateUser->validated();
            $map=[];
            //email,fb,google,phone,apple
            $map['type']=$validated['type'];//type value
            $map['open_id']=$validated['open_id'];//check two conditions users in db

            $user=User::where($map)->first();
            //user already logged in or not
            //empyty not exits
            //needs to save in db for first time
            if(empty($user->id)){
              //user not in db
              //save the user indb
              //toke is userid
              $validated['token']=md5(uniqid().rand(10000,99999));
              //first time created
              $validated['created_at']=Carbon::now();
              //encrypy password
           //   $validated['password']=Hash::make($validated['password']);
              //return id of the row after saving
              $userID=User::insertGetId($validated);
            //user infor
              $userInfo=User::where('id','=',$userID)->first();
              
              $accessToken=$userInfo->createToken(uniqid())->plainTextToken;
              $userInfo->access_token=$accessToken;
              User::where('id','=',$userID)->update(['access_token'=>$accessToken]);
              
              return response()->json([
                'code' => 200,
                'msg' => 'User Created Successfully',
                'data' => $userInfo,
            ], 200);

            }
            //generate new token 
            $accessToken=$user->createToken(uniqid())->plainTextToken;
            $user->access_token=$accessToken;
            //updat ein db
            User::where('open_id','=',$validated['open_id'])->update(['access_token'=>$accessToken]);

            return response()->json([
                'code' => 200,
                'msg' => 'User logged in Successfully',
                'data' => $user
            ], 200);

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

}


