<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductReturn extends Model
{
    protected $table = 'product_returns';
    protected $fillable =[
        "return_id", "product_id", "variant_id", "qty","sub_qty", "size", "sale_type", "sale_unit_id", "net_unit_price", "discount", "tax_rate", "tax", "total"
    ];
}
