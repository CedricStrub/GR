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
        Schema::create('project_contents',function (Blueprint $table) {

            $table->id();
            $table->project();
            $table->foreign('project')->references('id')->on('project')->onDelete('cascade');
            $table->view();
            $table->foreign('project_view')->references('id')->on('view')->onDelete('cascade');
            $table->widget();
            $table->foreign('project_widget')->references('id')->on('widget')->onDelete('cascade');
            $table->created_at();
            $table->updated_at();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('project_contents');
    }
};
