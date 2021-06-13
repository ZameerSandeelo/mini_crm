<?php

namespace App\Models;
 use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    public  function get_employee(){
      
       return $this->hasMany(Employee::class);
    }
}
