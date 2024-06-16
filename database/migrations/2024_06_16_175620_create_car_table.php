<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('auto', function (Blueprint $table) {
            $table->id('id');
            $table->string('Název', 255);
            $table->string('Popis', 255);
            $table->integer('Cena');
            $table->foreignId('Značka_id')->constrained('značka', 'id')->onDelete('cascade');
            $table->foreignId('RokVýroby_id')->constrained('rokvýroby', 'id')->onDelete('cascade');
            $table->foreignId('Náhon_id')->constrained('náhon', 'id')->onDelete('cascade');
            $table->foreignId('DruhPaliva_id')->constrained('druhpaliva', 'id')->onDelete('cascade');
            $table->foreignId('TypAuta_id')->constrained('typauta', 'id')->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('auto');
    }
};

