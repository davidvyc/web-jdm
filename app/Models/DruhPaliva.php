<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DruhPaliva extends Model
{
    protected $table = 'druhpaliva'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Palivo','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}