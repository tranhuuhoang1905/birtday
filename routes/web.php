<?php

use App\Http\Controllers\SSO\SSOController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;

use App\Models\Vote;
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
Route::get("/sso/login", [SSOController::class, 'getLogin'])->name("sso.login");
Route::get("/callback", [SSOController::class, 'getCallback'])->name("sso.callback");
Route::get("/sso/connect", [SSOController::class, 'connectUser'])->name("sso.connect");

Route::get('/login', [SSOController::class, 'getLogin'])->name('login');
// Route::get('/login', [App\Http\Controllers\Auth\LoginController::class, 'login'])->name('login');
Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');
// Auth::routes(['register' => false, 'reset' => false ]);



Route::get('/thu-vien-toan-tri', [App\Http\Controllers\HomeController::class, 'home'])->name('thu-vien-toan-tri');
Route::get('/quest', [App\Http\Controllers\HomeController::class, 'quest'])->name('quest');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'home'])->name('home');
Route::get('/launch', [App\Http\Controllers\HomeController::class, 'launch'])->name('launch');
Route::get('/site-map', [App\Http\Controllers\HomeController::class, 'launch'])->name('launch');
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('index');




Route::get('/getaccesstoken', [App\Http\Controllers\HomeController::class, 'getAccessToken'])->name('getaccesstoken');


