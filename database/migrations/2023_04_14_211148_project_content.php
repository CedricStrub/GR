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
            $table->unsignedBigInteger('project');
            $table->foreign('project')->references('id')->on('projects')->onDelete('cascade');
            $table->unsignedBigInteger('view');
            $table->foreign('view')->references('id')->on('project_views')->onDelete('cascade');
            $table->unsignedBigInteger('widget');
            $table->foreign('widget')->references('id')->on('project_widgets')->onDelete('cascade');
            $table->timestamp('created_at');
            $table->timestamp('updated_at');

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
