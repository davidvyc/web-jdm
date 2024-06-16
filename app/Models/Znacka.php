<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Znacka extends Model
{
    protected $table = 'značka'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Název','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}