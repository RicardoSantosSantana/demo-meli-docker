<?php

use Illuminate\Support\Facades\Route;

/** @var \Laravel\Lumen\Routing\Router $router */


Route::get('/code', function (\Illuminate\Http\Request $request)  {

    $queryString = http_build_query($request->query());
    $parameters = [];
    $explodedQueryString = explode('&', $queryString);
    foreach ($explodedQueryString as $string) {
        $values = explode('=', $string);
        $key = $values[0];
        $val = $values[1];
        $parameters[$key] = $val;
    }

    return view('code', ['code' => $parameters["code"]]);
});

Route::group(['prefix' => 'api', 'middleware' => 'cors'], function () {



    Route::group(['prefix' => 'user'], function () {
        Route::get('/profile/{id}', 'AuthController@profile');
        Route::post('/login', 'AuthController@login');
        Route::post('/register', 'AuthController@register');
    });

    Route::group(['middleware' => 'auth'], function () {


        Route::group(['prefix' => 'product'], function () {
            Route::get('/', 'ProductController@index');
            Route::get('/{id}', 'ProductController@getProductId');
            Route::post('/download', 'ProductController@download_save_products');
        });

        Route::group(['prefix' => 'meli'], function () {
            Route::post('/product/create',  '\App\Classes\Meli\Items@create');

            Route::post('/product/desc',  '\App\Classes\Meli\Items@add_description');
            Route::post('/token/new',  '\App\Classes\Meli\Token_Meli@GenerateToken');
            Route::post('/token/refresh',  '\App\Classes\Meli\Token_Meli@GenerateRefreshToken');
        });

    });
});
