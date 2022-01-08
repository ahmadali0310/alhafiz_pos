<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Sale extends Model
{
	protected $table = 'product_sales';
    protected $fillable =[
        "sale_id", "product_id", "variant_id", "qty", "size", "sale_unit_id", "net_unit_price","net_unit_cost", "discount", "tax_rate", "tax","total_cost", "total"
    ];
}
