<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ZnackaController;
use App\Http\Controllers\AutoController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::delete('/znacka/{id}', [ZnackaController::class, 'delete']);
    Route::get('/{Název}/{id}/edit', [ZnackaController::class, 'edit']);
    Route::put('/znacka/{id}', [ZnackaController::class, 'update']);
    Route::get('/znacka/create', [ZnackaController::class, 'create'])->name('znacka.create');
    Route::post('/znacka', [ZnackaController::class, 'store']);
    Route::delete('/auto/delete/{id}', [AutoController::class, 'delete']);
    Route::get('/auto/create', [AutoController::class, 'create'])->name('auto.create');
    Route::post('/auto/add', [AutoController::class, 'save']);
});

Route::get('/', [ZnackaController::class, 'znacka'])->name('znacka');
Route::get('/auto', [AutoController::class, 'auto'])->name('auto');



require __DIR__.'/auth.php';
