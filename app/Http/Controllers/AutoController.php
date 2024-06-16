<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Auto;
use App\Models\Znacka;
use App\Models\RokVyroby;
use App\Models\Nahon;
use App\Models\DruhPaliva;
use App\Models\TypAuta;
use App\Models\Obrazek;
use Config;

class AutoController extends Controller
{
    public function auto()
    {
        $data = Auto::select('auto.id', 'auto.Název', 'auto.Cena')
            ->join('značka', 'auto.Značka_id', '=', 'značka.id')
            ->join('rokvýroby', 'auto.RokVýroby_id', '=', 'rokvýroby.id')
            ->join('náhon', 'auto.Náhon_id', '=', 'náhon.id')
            ->join('druhpaliva', 'auto.DruhPaliva_id', '=', 'druhpaliva.id')
            ->join('typauta', 'auto.TypAuta_id', '=', 'typauta.id')
            ->join('obrázek', 'auto.id', '=', 'obrázek.Auta_id')
            ->select(
                'auto.id',
                'auto.Název',
                'auto.Cena',
                'auto.Popis',
                'značka.Název as znacka',
                'typauta.Název as typauta',
                'obrázek.Název as image',
                'náhon.Pohon as nahon',
                'druhpaliva.Palivo as druhpaliva',
                'rokvýroby.Rok as rokvyroby'
            )
            ->paginate(Config::get('pagination.pagination'));
    
        return view('auto', ['data' => $data]);
    }
    

    public function delete($id)
    {
        $auto = Auto::find($id);
        $auto->delete();
        return redirect('/auto')->with('success', 'Auto úspěšně smazáno!');
    }

    public function create()
    {
        $znacky = Znacka::all();
        $rokyVyroby = RokVyroby::all();
        $nahony = Nahon::all();
        $druhyPaliva = DruhPaliva::all();
        $typyAut = TypAuta::all();

        return view('auto-create', compact('znacky', 'rokyVyroby', 'nahony', 'druhyPaliva', 'typyAut'));
    }

    public function save(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png|max:2048'
        ]);

        try {
            $imageName = time().'.'.$request->image->extension(); 
            $request->image->move(public_path('obrazky'), $imageName);  

            $auto = new Auto;
            $auto->Název = $request->input('nazev');
            $auto->Popis = $request->input('popis');
            $auto->Cena = $request->input('cena');
            $auto->Značka_id = $request->input('znacka_id');
            $auto->RokVýroby_id = $request->input('rok_vyroby_id');
            $auto->Náhon_id = $request->input('nahon_id');
            $auto->DruhPaliva_id = $request->input('druh_paliva_id');
            $auto->TypAuta_id = $request->input('typ_auta_id');
            $auto->save();
            $obrazek = new Obrazek;
            $obrazek->Auta_id = $auto->id;
            $obrazek->Název = $imageName;
            $obrazek->save();

            return redirect('/auto')
                ->with('success', "Auto '{$auto->Název}' bylo vytvořeno s obrázkem '/public/obrazky/{$imageName}'");
        } catch (\Exception $e) {
            return redirect('/auto')
                ->with('error', "Nastala chyba při vytváření auta: {$e->getMessage()}");
        }
    }
}