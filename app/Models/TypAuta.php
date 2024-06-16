<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TypAuta extends Model
{
    protected $table = 'typauta'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Název','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}