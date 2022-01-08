<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Deposit extends Model
{
    protected $fillable =[
        "amount", "debit", "customer_id", "user_id", "my_status","note"
    ];
}
