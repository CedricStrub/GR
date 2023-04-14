<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('project_widgets',function (Blueprint $table) {

            $table->id();
            $table->titre();
            $table->haut();
            $table->gauche();
            $table->hauteur();
            $table->largeur();
            $table->css_id();
            $table->created_at();
            $table->updated_at();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('project_widgets');
    }
};
