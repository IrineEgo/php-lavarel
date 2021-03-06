<?php
    Route::get('/', function () {
        return redirect()->route('question.index');
    });
    Auth::routes();
    Route::get('/home', 'HomeController@index')->name('home');
    Route::resource('question', 'QuestionController', ['only'=>[
        'index', 'create', 'store'
    ]]);
    Route::group(['middleware' => 'auth'], function () {
        Route::resource('user', 'Admin\UserController', ['except'=>[
            'show'
        ]]);
        Route::resource('topic', 'Admin\TopicController', ['except'=>[
            'edit', 'update'
        ]]);

        Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
            Route::resource('question', 'Admin\QuestionController', ['only'=>[
                'edit', 'update', 'destroy'
            ]]);
        });
    });
