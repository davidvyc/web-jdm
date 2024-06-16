<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Nahon extends Model
{
    protected $table = 'náhon'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Pohon','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}