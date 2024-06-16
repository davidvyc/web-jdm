<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Auto extends Model
{
    protected $table = 'auto'; 
    protected $primaryKey = 'id';
    protected $fillable = ['Název','Popis','Cena','Značka_id','RokVýroby_id','Náhon_id','DruhPaliva_id','TypAuta_id','deleted_at','created_at','updated_at']; 
    use SoftDeletes;
    
    public function znacka()
    {
        return $this->belongsTo(Znacka::class, 'Značka_id');
    }

    public function rokVyroby()
    {
        return $this->belongsTo(RokVyroby::class, 'RokVýroby_id');
    }

    public function nahon()
    {
        return $this->belongsTo(Nahon::class, 'Náhon_id');
    }

    public function druhPaliva()
    {
        return $this->belongsTo(DruhPaliva::class, 'DruhPaliva_id');
    }

    public function typAuta()
    {
        return $this->belongsTo(TypAuta::class, 'TypAuta_id');
    }

    public function obrazek()
    {
        return $this->hasOne(Obrazek::class, 'Auta_id');
    }
}