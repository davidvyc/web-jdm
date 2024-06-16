<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Znacka;
use Config;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;

class ZnackaController extends Controller
{
    public function znacka(Request $request)
    {
        $pocetznacek = Znacka::count('id');
        $paginate = Config::get('pagination.pagination');
        $data = Znacka::All();
        return view('znacka', [
            'data' => $data, 
            'pocetznacek' => $pocetznacek
        ]);
    }
    
    public function delete($id)
    {
        try {
            $znacka = Znacka::find($id);
            $znacka->delete();   
            return back()->with('success', 'Smazání proběhlo úspěšně!');

        } catch (\Exception $e) {
            return back()->with('error', 'Smazání se nepovedlo: ' . $e->getMessage());
        }
    }
    public function edit($Název, $id)
    {
        $znacka = Znacka::findOrFail($id);
        return view('edit', ['znacka' => $znacka]);
    }
    public function update(Request $request, $id)
    {
        try {
        $znacka = Znacka::findOrFail($id);
        $znacka->Název = $request->input('Název');
        $znacka->save();
        $request->session()->flash('success', "Značka byla upraven na {$znacka->Název}!");
        return redirect ('/'); 
        }
        catch (\Exception $e)  {
            $znacka = Znacka::findOrFail($id);
            $request->session()->flash('error', "Nastala chyba při editaci značky {$znacka->Název}! {$e->getMessage()}");
            return redirect ('/'); 
        }
    
    }
    public function create()
    {
        return view('create');
    }
    public function store(Request $request)
    {
        try {
            $znacka = new znacka;
            $znacka->Název = $request->input('Název');
            $znacka->save();
            $request->session()->flash('success', "Značka {$znacka->Název} byla přidána!");

            return redirect ('/'); 
        } catch (\Exception $e) {

            $request->session()->flash('error', "Nastala chyba při přidávání značky! {$e->getMessage()}");
    
            return redirect ('/');
        }
    }
}
