@extends('layouts.app2')
@section('content')

<div class="container mx-auto px-4">
    <h1 class="text-3xl py-4 border-b mb-10">Editace značky {{ $znacka->Název }}</h1>
    <form method="POST" action="/znacka/{{ $znacka->id }}" class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="Název">
                Název:
            </label>
            <input class="input input-bordered w-full" id="Název" name="Název" type="text" value="{{ $znacka->Název }}">
        </div>


        <div class="flex items-center justify-between">
            <button class="btn btn-primary" type="submit">
                Uložit
            </button>
        </div>
    </form>
</div>
@endsection
