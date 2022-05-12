<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'slug', 'photo', 'status', 'description']; 
    public function country(){
        return $this->hasMany('App\Models\Country');
    }
}

