@extends('layouts.app2')

@section('content')
<div class="container mx-auto px-4">
    <h1 class="text-3xl py-4 border-b mb-10">Přidání auta</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    <br>
    <br>

    <form method="POST" action="/auto/add" class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4" enctype="multipart/form-data">
        @csrf

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="nazev">
                Název auta:
            </label>
            <input class="input input-bordered w-full" id="nazev" name="nazev" type="text" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="popis">
                Popis:
            </label>
            <textarea class="input input-bordered w-full" id="popis" name="popis" rows="4" required></textarea>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="cena">
                Cena:
            </label>
            <input class="input input-bordered w-full" id="cena" name="cena" type="number" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="znacka_id">
                Značka auta:
            </label>
            <select class="input input-bordered w-full" id="znacka_id" name="znacka_id" required>
                @foreach ($znacky as $znacka)
                    <option value="{{ $znacka->id }}">{{ $znacka->Název }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="rok_vyroby_id">
                Rok výroby:
            </label>
            <select class="input input-bordered w-full" id="rok_vyroby_id" name="rok_vyroby_id" required>
                @foreach ($rokyVyroby as $rok)
                    <option value="{{ $rok->id }}">{{ $rok->Rok }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="nahon_id">
                Náhon:
            </label>
            <select class="input input-bordered w-full" id="nahon_id" name="nahon_id" required>
                @foreach ($nahony as $nahon)
                    <option value="{{ $nahon->id }}">{{ $nahon->Pohon }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="druh_paliva_id">
                Druh paliva:
            </label>
            <select class="input input-bordered w-full" id="druh_paliva_id" name="druh_paliva_id" required>
                @foreach ($druhyPaliva as $palivo)
                    <option value="{{ $palivo->id }}">{{ $palivo->Palivo }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="typ_auta_id">
                Typ auta:
            </label>
            <select class="input input-bordered w-full" id="typ_auta_id" name="typ_auta_id" required>
                @foreach ($typyAut as $typ)
                    <option value="{{ $typ->id }}">{{ $typ->Název }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="image">
                Obrázek auta:
            </label>
            <input class="input input-bordered w-full" id="image" name="image" type="file" required accept="image/png, image/jpeg">
        </div>

        <div class="flex items-center justify-between">
            <button class="btn btn-primary" type="submit">
                Potvrdit
            </button>
        </div>
    </form>
</div>
@endsection
