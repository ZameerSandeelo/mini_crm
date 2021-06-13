<?php

use Illuminate\Support\Facades\Route;

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
    return view('home');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/companies', [App\Http\Controllers\CompaniesController::class, 'index'])->name('companies');
Route::get('/companies/create', [App\Http\Controllers\CompaniesController::class, 'create'])->name('companies_create');
Route::post('/companies/store', [App\Http\Controllers\CompaniesController::class, 'store'])->name('companies_store');
Route::get('/companies/edit/{id}', [App\Http\Controllers\CompaniesController::class, 'edit'])->name('companies_edit');
Route::post('/companies/update/{id}', [App\Http\Controllers\CompaniesController::class, 'update'])->name('companies_update');
Route::get('/companies/delete/{id}', [App\Http\Controllers\CompaniesController::class, 'destroy'])->name('companies_delete');


Route::get('/employees', [App\Http\Controllers\EmployeesController::class, 'index'])->name('employees');
Route::get('/employees/create', [App\Http\Controllers\EmployeesController::class, 'create'])->name('employees_create');
Route::post('/employees/store', [App\Http\Controllers\EmployeesController::class, 'store'])->name('employees_store');
Route::get('/employees/edit/{id}', [App\Http\Controllers\EmployeesController::class, 'edit'])->name('employees_edit');
Route::post('/employees/update/{id}', [App\Http\Controllers\EmployeesController::class, 'update'])->name('employees_update');
Route::get('/employees/delete/{id}', [App\Http\Controllers\EmployeesController::class, 'destroy'])->name('employees_delete');

 