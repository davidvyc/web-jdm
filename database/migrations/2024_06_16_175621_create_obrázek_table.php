<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('obrázek', function (Blueprint $table) {
            $table->id('id');
            $table->string('Název', 255);
            $table->foreignId('Auta_id')->constrained('auto', 'id')->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });
    }


    public function down()
    {
        //
    }
};
