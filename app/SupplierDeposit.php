<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SupplierDeposit extends Model
{
    protected $fillable =[
        "amount", "debit", "supplier_id", "user_id","my_status", "note"
    ];
}
