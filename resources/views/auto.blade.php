@extends('layouts.app2')

@section('content')
@if (session('success'))
    <br>
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    <br>
@endif

@if (session('error'))
    <br>
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
    <br>
@endif

<div class="grid grid-cols-2 sm:grid-cols-2 md:grid-cols-2 gap-4">
    @foreach ($data as $auto)
        <div class="card w-full bg-base-100 shadow-xl">
            <figure>
                @if ($auto->obrazek)
                    <img src="{{ asset('obrazky/' . $auto->image) }}" alt="{{ $auto->Název }}" class="w-auto h-64 object-cover">
                @else
                    <img src="{{ asset('obrazky/default.jpg') }}" alt="Default Image" class="w-auto h-64 object-cover">
                @endif
            </figure>
            <div class="card-body">
                <h2 class="card-title">
                    {{ $auto->Název }}
                </h2>
                <p>ID: {{ $auto->id }}</p>
                <p>Popis: {{ $auto->Popis }}</p>
                <p>Cena: {{ $auto->Cena }}</p>
                <p>Značka: {{ $auto->znacka }}</p>
                <p>Rok výroby: {{ $auto->rokvyroby }}</p>
                <p>Náhon: {{ $auto->nahon }}</p>
                <p>Druh paliva: {{ $auto->druhpaliva }}</p>
                <p>Typ auta: {{ $auto->typauta }}</p>

                <div class="card-actions justify-end">
                    <button class="btn btn-outline btn-error" data-id="{{ $auto->id }}" onclick="setFormAction('{{ $auto->id }}')">Smazat</button>
                </div>
            </div>
        </div>
    @endforeach
</div>

<div id="myModal" class="fixed z-10 inset-0 overflow-y-auto hidden" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
        <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">​</span>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                        <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
                            Opravdu chcete tuto akci provést?
                        </h3>
                    </div>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <form id="deleteForm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-error" type="submit">Smazat</button>
                </form>
                &nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-primary" id="cancelButton">Zrušit</button>
            </div>
        </div>
    </div>
</div>

<br>
<br>
<br>

{{ $data->links() }}
@endsection
