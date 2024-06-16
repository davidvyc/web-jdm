<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RokVyroby extends Model
{
    protected $table = 'rokvýroby'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Rok','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}