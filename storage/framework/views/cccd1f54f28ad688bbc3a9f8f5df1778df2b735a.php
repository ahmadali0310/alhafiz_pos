 <?php $__env->startSection('content'); ?>
<?php if(session()->has('not_permitted')): ?>
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo e(session()->get('not_permitted')); ?></div> 
<?php endif; ?>
<section class="forms">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h4><?php echo e(trans('file.Update Sale')); ?></h4>
                    </div>
                    <div class="card-body">
                        <p class="italic"><small><?php echo e(trans('file.The field labels marked with * are required input fields')); ?>.</small></p>
                        <?php echo Form::open(['route' => ['sales.update', $lims_sale_data->id], 'method' => 'put', 'files' => true, 'id' => 'payment-form']); ?>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.reference')); ?></strong></label>
                                            <p><strong><?php echo e($lims_sale_data->reference_no); ?></strong></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.customer')); ?> *</strong></label>
                                            <input type="hidden" name="customer_id_hidden" value="<?php echo e($lims_sale_data->customer_id); ?>" />
                                            <select required name="customer_id" class="selectpicker form-control" data-live-search="true" id="customer-id" data-live-search-style="begins" title="Select customer...">
                                                <?php $__currentLoopData = $lims_customer_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $customer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($customer->id); ?>"><?php echo e($customer->name . ' (' . $customer->phone_number . ')'); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Warehouse')); ?> *</strong></label>
                                            <input type="hidden" name="warehouse_id_hidden" value="<?php echo e($lims_sale_data->warehouse_id); ?>" />
                                            <select required name="warehouse_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select warehouse...">
                                                <?php $__currentLoopData = $lims_warehouse_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $warehouse): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($warehouse->id); ?>"><?php echo e($warehouse->name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Biller')); ?> *</strong></label>
                                            <input type="hidden" name="biller_id_hidden" value="<?php echo e($lims_sale_data->biller_id); ?>" />
                                            <select required name="biller_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Biller...">
                                                <?php $__currentLoopData = $lims_biller_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $biller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($biller->id); ?>"><?php echo e($biller->name . ' (' . $biller->company_name . ')'); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <label><strong><?php echo e(trans('file.Select Product')); ?></strong></label>
                                        <div class="search-box input-group">
                                            <button type="button" class="btn btn-secondary btn-lg"><i class="fa fa-barcode"></i></button>
                                            <input type="text" name="product_code_name" id="lims_productcodeSearch" placeholder="Please type product code and select..." class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <h5><?php echo e(trans('file.Order Table')); ?> *</h5>
                                        <div class="table-responsive mt-3">
                                            <table id="myTable" class="table table-hover order-list">
                                                <thead>
                                                    <tr>
                                                        <th><?php echo e(trans('file.name')); ?></th>
                                                        <th><?php echo e(trans('file.Code')); ?></th>
                                                        <th><?php echo e(trans('file.size')); ?></th>
                                                        <th><?php echo e(trans('file.Quantity')); ?></th>
                                                        <th><?php echo e(trans('file.Net Unit Price')); ?></th>
                                                        <th><?php echo e(trans('file.Discount')); ?></th>
                                                        <th><?php echo e(trans('file.Tax')); ?></th>
                                                        <th><?php echo e(trans('file.Subtotal')); ?></th>
                                                        <th><i class="fa fa-trash"></i></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php 
                                                    $temp_unit_name = [];
                                                    $temp_unit_operator = [];
                                                    $temp_unit_operation_value = [];
                                                    ?>
                                                    <?php $__currentLoopData = $lims_product_sale_data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product_sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <?php
                                                        $sizes = App\ProductPurchase::select('size')->distinct()->where('product_id', $product_sale->product_id)->get();
                                                        $product_data = DB::table('products')->find($product_sale->product_id);
                                                        if($product_sale->variant_id){
                                                            $product_variant_data = \App\ProductVariant::select('id', 'item_code')->FindExactProduct($product_data->id, $product_sale->variant_id)->first();
                                                            $product_variant_id = $product_variant_data->id;
                                                            $product_data->code = $product_variant_data->item_code;
                                                        }
                                                        else
                                                            $product_variant_id = null;
                                                        if($product_data->tax_method == 1){
                                                            $product_price = $product_sale->net_unit_price + ($product_sale->discount / $product_sale->qty);
                                                        }
                                                        elseif ($product_data->tax_method == 2) {
                                                            $product_price =($product_sale->total / $product_sale->qty) + ($product_sale->discount / $product_sale->qty);
                                                        }

                                                        $tax = DB::table('taxes')->where('rate',$product_sale->tax_rate)->first();
                                                        $unit_name = array();
                                                        $unit_operator = array();
                                                        $unit_operation_value = array();
                                                        if($product_data->type == 'standard'){
                                                            $units = DB::table('units')->where('base_unit', $product_data->unit_id)->orWhere('id', $product_data->unit_id)->get();

                                                            foreach($units as $unit) {
                                                                if($product_sale->sale_unit_id == $unit->id) {
                                                                    array_unshift($unit_name, $unit->unit_name);
                                                                    array_unshift($unit_operator, $unit->operator);
                                                                    array_unshift($unit_operation_value, $unit->operation_value);
                                                                }
                                                                else {
                                                                    $unit_name[]  = $unit->unit_name;
                                                                    $unit_operator[] = $unit->operator;
                                                                    $unit_operation_value[] = $unit->operation_value;
                                                                }
                                                            }
                                                            if($unit_operator[0] == '*'){
                                                                $product_price = $product_price / $unit_operation_value[0];
                                                            }
                                                            elseif($unit_operator[0] == '/'){
                                                                $product_price = $product_price * $unit_operation_value[0];
                                                            }
                                                        }
                                                        else {
                                                            $unit_name[] = 'n/a'. ',';
                                                            $unit_operator[] = 'n/a'. ',';
                                                            $unit_operation_value[] = 'n/a'. ',';
                                                        }
                                                        $temp_unit_name = $unit_name = implode(",",$unit_name) . ',';

                                                        $temp_unit_operator = $unit_operator = implode(",",$unit_operator) .',';

                                                        $temp_unit_operation_value = $unit_operation_value =  implode(",",$unit_operation_value) . ',';
                                                        ?>
                                                        <td><?php echo e($product_data->name); ?><button type="button" class="edit-product btn btn-link" data-toggle="modal" data-target="#editModal"> <i class="fa fa-edit"></i></button> <input type="hidden" class="product-type" value="<?php echo e($product_data->type); ?>" /></td>
                                                            <td><?php echo e($product_data->code); ?></td>
                                                        <td>
                                                            <select name="size[]" id="" class="form-control size" required>
                                                                <?php $__currentLoopData = $sizes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $size): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <option value="<?php echo e($size->size); ?>" <?php echo e($product_sale->size == $size->size ? 'selected' : ''); ?> > <?php echo e($size->size); ?></option>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            </select>
                                                        </td>
                                                        <td><input type="number" class="form-control qty" name="qty[]" value="<?php echo e($product_sale->qty); ?>" step="any" required/></td>
                                                        <td class="net_unit_price"><?php echo e(number_format((float)$product_sale->net_unit_price, 2, '.', '')); ?> </td>
                                                        <td class="discount"><?php echo e(number_format((float)$product_sale->discount, 2, '.', '')); ?></td>
                                                        <td class="tax"><?php echo e(number_format((float)$product_sale->tax, 2, '.', '')); ?></td>
                                                        <td class="sub-total"><?php echo e(number_format((float)$product_sale->total, 2, '.', '')); ?></td>
                                                        <td style="display: none;" class="sub-cost"><?php echo e(number_format((float)$product_sale->total_cost, 2, '.', '')); ?></td>
                                                        <td><button type="button" class="ibtnDel btn btn-md btn-danger"><?php echo e(trans("file.delete")); ?></button></td>
                                                        <input type="hidden" class="product-code" name="product_code[]" value="<?php echo e($product_data->code); ?>"/>
                                                        <input type="hidden" name="product_id[]" value="<?php echo e($product_data->id); ?>"/>
                                                        <input type="hidden" name="product_variant_id[]" value="<?php echo e($product_variant_id); ?>"/>
                                                        <input type="hidden" class="product-price" name="product_price[]" value="<?php echo e($product_price); ?>"/>
                                                        <input type="hidden" class="sale-unit" name="sale_unit[]" value="<?php echo e($unit_name); ?>"/>
                                                        <input type="hidden" class="sale-unit-operator" value="<?php echo e($unit_operator); ?>"/>
                                                        <input type="hidden" class="sale-unit-operation-value" value="<?php echo e($unit_operation_value); ?>"/>
                                                        <input type="hidden" class="net_unit_price" name="net_unit_price[]" value="<?php echo e($product_sale->net_unit_price); ?>" />
                                                         <input type="hidden" class="net_cost_price" name="net_cost_price[]" value="<?php echo e($product_sale->net_unit_cost); ?>" />;
                                                        <input type="hidden" class="discount-value" name="discount[]" value="<?php echo e($product_sale->discount); ?>" />
                                                        <input type="hidden" class="tax-rate" name="tax_rate[]" value="<?php echo e($product_sale->tax_rate); ?>"/>
                                                        <?php if($tax): ?>
                                                        <input type="hidden" class="tax-name" value="<?php echo e($tax->name); ?>" />
                                                        <?php else: ?>
                                                        <input type="hidden" class="tax-name" value="No Tax" />
                                                        <?php endif; ?>
                                                        <input type="hidden" class="tax-method" value="<?php echo e($product_data->tax_method); ?>"/>
                                                        <input type="hidden" class="tax-value" name="tax[]" value="<?php echo e($product_sale->tax); ?>" />
                                                        <input type="hidden" class="subtotal-value" name="subtotal[]" value="<?php echo e($product_sale->total); ?>" />
                                                        <input type="hidden" class="cost-total-value" name="costtotal[]" value="<?php echo e($product_sale->total_cost); ?>"  />
                                                    </tr>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </tbody>
                                                <tfoot class="tfoot active">
                                                    <th colspan="2"><?php echo e(trans('file.Total')); ?></th>
                                                    <th></th>
                                                    <th id="total-qty"><?php echo e($lims_sale_data->total_qty); ?></th>
                                                    <th></th>
                                                    <th id="total-discount"><?php echo e(number_format((float)$lims_sale_data->total_discount, 2, '.', '')); ?></th>
                                                    <th id="total-tax"><?php echo e(number_format((float)$lims_sale_data->total_tax, 2, '.', '')); ?></th>
                                                    <th id="total"><?php echo e(number_format((float)$lims_sale_data->total_price, 2, '.', '')); ?></th>
                                                    <th><i class="fa fa-trash"></i></th>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="total_qty" value="<?php echo e($lims_sale_data->total_qty); ?>" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="total_discount" value="<?php echo e($lims_sale_data->total_discount); ?>" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="total_tax" value="<?php echo e($lims_sale_data->total_tax); ?>" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="total_price" value="<?php echo e($lims_sale_data->total_price); ?>" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="update_status" value="2">
                                            <input type="hidden" name="total_cost" value="<?php echo e($lims_sale_data->total_cost); ?>" />
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <input type="hidden" name="item" value="<?php echo e($lims_sale_data->item); ?>" />
                                            <input type="hidden" name="order_tax" value="<?php echo e($lims_sale_data->order_tax); ?>"/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <?php if($lims_sale_data->coupon_id): ?>
                                        <?php
                                        $coupon_data = DB::table('coupons')->find($lims_sale_data->coupon_id);
                                        ?>
                                        <input type="hidden" name="coupon_active" value="1" />
                                        <input type="hidden" name="coupon_type" value="<?php echo e($coupon_data->type); ?>" />
                                        <input type="hidden" name="coupon_amount" value="<?php echo e($coupon_data->amount); ?>" />
                                        <input type="hidden" name="coupon_minimum_amount" value="<?php echo e($coupon_data->minimum_amount); ?>" />
                                        <input type="hidden" name="coupon_discount" value="<?php echo e($lims_sale_data->coupon_discount); ?>">

                                        <?php else: ?>
                                        <input type="hidden" name="coupon_active" value="0" />
                                        <?php endif; ?>
                                        <div class="form-group">
                                            <input type="hidden" name="grand_total" value="<?php echo e($lims_sale_data->grand_total); ?>" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <input type="hidden" name="order_tax_rate_hidden" value="<?php echo e($lims_sale_data->order_tax_rate); ?>">
                                            <label><strong><?php echo e(trans('file.Order Tax')); ?></strong></label>
                                            <select class="form-control" name="order_tax_rate">
                                                <option value="0">No Tax</option>
                                                <?php $__currentLoopData = $lims_tax_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tax): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($tax->rate); ?>"><?php echo e($tax->name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                <strong><?php echo e(trans('file.Order Discount')); ?></strong>
                                            </label>
                                            <input type="number" name="order_discount" class="form-control" value="<?php echo e($lims_sale_data->order_discount); ?>" step="any" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label><strong>Discount Show *</strong></label>
                                            <select name="discount_status" class="form-control">
                                                <option value="1">Yes</option>
                                                <option value="2">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                <strong><?php echo e(trans('file.Shipping Cost')); ?></strong>
                                            </label>
                                            <input type="number" name="shipping_cost" class="form-control" value="<?php echo e($lims_sale_data->shipping_cost); ?>" step="any" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Attach Document')); ?></strong></label> <i class="fa fa-question-circle" data-toggle="tooltip" title="Only jpg, jpeg, png, gif, pdf, csv, docx, xlsx and txt file is supported"></i> 
                                            <input type="file" name="document" class="form-control" />
                                            <?php if($errors->has('extension')): ?>
                                            <span>
                                                <strong><?php echo e($errors->first('extension')); ?></strong>
                                            </span>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Sale Status')); ?> *</strong></label>
                                            <input type="hidden" name="sale_status_hidden" value="<?php echo e($lims_sale_data->sale_status); ?>" />
                                            <select name="sale_status" class="form-control">
                                                <option value="1"><?php echo e(trans('file.Completed')); ?></option>
                                                <option value="2"><?php echo e(trans('file.Pending')); ?></option>
                                            </select>
                                        </div>
                                    </div>
                                    <?php if($lims_sale_data->coupon_id): ?>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                <strong><?php echo e(trans('file.Coupon Discount')); ?></strong>
                                            </label>
                                            <p class="mt-2 pl-2"><strong id="coupon-text"><?php echo e(number_format((float)$lims_sale_data->coupon_discount, 2, '.', '')); ?></strong></p>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Payment Status')); ?> *</strong></label>
                                            <select name="payment_status" class="form-control">
                                                <?php if($lims_sale_data->payment_status == 1): ?>
                                                    <option value="1" selected><?php echo e(trans('file.Pending')); ?></option>
                                                <?php else: ?>
                                                    <option value="1"><?php echo e(trans('file.Pending')); ?></option>
                                                <?php endif; ?>
                                                <?php if($lims_sale_data->payment_status == 2): ?>
                                                    <option value="2" selected><?php echo e(trans('file.Due')); ?></option>
                                                <?php else: ?>
                                                    <option value="2"><?php echo e(trans('file.Due')); ?></option>
                                                <?php endif; ?>
                                                <?php if($lims_sale_data->payment_status == 3): ?>
                                                    <option value="3" selected><?php echo e(trans('file.Partial')); ?></option>
                                                <?php else: ?>
                                                    <option value="3"><?php echo e(trans('file.Partial')); ?></option>
                                                <?php endif; ?>

                                                <?php if($lims_sale_data->payment_status == 4): ?>
                                                    <option value="4" selected><?php echo e(trans('file.Paid')); ?></option>
                                                <?php else: ?>
                                                    <option value="4"><?php echo e(trans('file.Paid')); ?></option>
                                                <?php endif; ?>
                                            </select>
                                        </div>
                                    </div>







                                </div>
                                <div id="payment">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label><strong>Total Amount *</strong></label>
                                                <input type="number" name="paying_amount" value="<?php echo e($lims_sale_data->grand_total); ?>" class="form-control" id="paying-amount" step="any" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.Paying Amount')); ?> *</strong></label>
                                                <input type="number" value="<?php echo e($lims_sale_data->paid_amount); ?>" name="paid_amount" class="form-control" id="paid-amount" step="any"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.Change')); ?></strong></label>
                                                <p id="change" class="ml-2">0.00</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Sale Note')); ?></strong></label>
                                            <textarea rows="5" class="form-control" name="sale_note" ><?php echo e($lims_sale_data->sale_note); ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><strong><?php echo e(trans('file.Staff Note')); ?></strong></label>
                                            <textarea rows="5" class="form-control" name="staff_note"><?php echo e($lims_sale_data->staff_note); ?></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="<?php echo e(trans('file.submit')); ?>" class="btn btn-primary" id="submit-button">
                                </div>
                            </div>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <table class="table table-bordered table-condensed totals">
            <td><strong><?php echo e(trans('file.Items')); ?></strong>
                <span class="pull-right" id="item">0.00</span>
            </td>
            <td><strong><?php echo e(trans('file.Total')); ?></strong>
                <span class="pull-right" id="subtotal">0.00</span>
            </td>
            <td><strong><?php echo e(trans('file.Order Tax')); ?></strong>
                <span class="pull-right" id="order_tax">0.00</span>
            </td>
            <td><strong><?php echo e(trans('file.Order Discount')); ?></strong>
                <span class="pull-right" id="order_discount">0.00</span>
            </td>
            <td><strong><?php echo e(trans('file.Shipping Cost')); ?></strong>
                <span class="pull-right" id="shipping_cost">0.00</span>
            </td>
            <td><strong><?php echo e(trans('file.grand total')); ?></strong>
                <span class="pull-right" id="grand_total">0.00</span>
            </td>
        </table>
    </div>
    <div id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
        <div role="document" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 id="modal_header" class="modal-title"></h5>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label><strong><?php echo e(trans('file.Quantity')); ?></strong></label>
                            <input type="number" name="edit_qty" class="form-control" step="any">
                        </div>
                        <div class="form-group">
                            <label><strong><?php echo e(trans('file.Unit Discount')); ?></strong></label>
                            <input type="number" name="edit_discount" class="form-control" step="any">
                        </div>
                        <div class="form-group">
                            <label><strong><?php echo e(trans('file.Unit Price')); ?></strong></label>
                            <input type="number" name="edit_unit_price" class="form-control" step="any">
                        </div>
                        <?php
                        $tax_name_all[] = 'No Tax';
                        $tax_rate_all[] = 0;
                        foreach($lims_tax_list as $tax) {
                            $tax_name_all[] = $tax->name;
                            $tax_rate_all[] = $tax->rate;
                        }
                        ?>
                        <div class="form-group">
                            <label><strong><?php echo e(trans('file.Tax Rate')); ?></strong></label>
                            <select name="edit_tax_rate" class="form-control">
                                <?php $__currentLoopData = $tax_name_all; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($key); ?>"><?php echo e($name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                        </div>
                        <div id="edit_unit" class="form-group">
                            <label><strong><?php echo e(trans('file.Product Unit')); ?></strong></label>
                            <select name="edit_unit" class="form-control">
                            </select>
                        </div>
                        <button type="button" name="update_btn" class="btn btn-primary"><?php echo e(trans('file.update')); ?></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">

    $("#card-element").hide();
    $("#cheque").hide();

    $("#change").text(parseFloat($("#paying-amount").val() - $("#paid-amount").val()).toFixed(2));

    $('select[name="payment_status"]').on("change", function() {
        var payment_status = $(this).val();
        if (payment_status == 3 || payment_status == 4) {
            $("#paying-amount").prop('disabled',false);
            $("#payment").show();
            $("#paying-amount").prop('required',true);
            $("#paid-amount").prop('required',true);
            $("#change").text('0.00');
            if(payment_status == 4){
                $("#paying-amount").prop('disabled',true);
                $('input[name="paying_amount"]').val($('input[name="grand_total"]').val());
                $('input[name="paid_amount"]').val($('input[name="grand_total"]').val());
            }
        }
        else{
            $("#paying-amount").prop('required',false);
            $("#paid-amount").prop('required',false);
            $('input[name="paying_amount"]').val('');
            $('input[name="paid_amount"]').val('');
            $("#change").text('0.00');
            $("#payment").hide();
        }
    });
    $('input[name="paid_amount"]').on("input", function() {
        console.log($(this).val());
        if( $(this).val() > parseFloat($('input[name="paying_amount"]').val()) ) {
            alert('Paying amount cannot be bigger than recieved amount');
            $(this).val('');
        }
        else if( $(this).val() > parseFloat($('#grand_total').text()) ){
            alert('Paying amount cannot be bigger than grand total');
            $(this).val('');
        }

        $("#change").text(parseFloat($("#paying-amount").val() - $(this).val()).toFixed(2));
        var id = $('select[name="paid_by_id"]').val();
        if(id == 2){
            var balance = gift_card_amount[$("#gift_card_id").val()] - gift_card_expense[$("#gift_card_id").val()];
            if($(this).val() > balance)
                alert('Amount exceeds card balance! Gift Card balance: '+ balance);
        }
        else if(id == 6){
            if( $('input[name="paid_amount"]').val() > deposit[$('#customer_id').val()] )
                alert('Amount exceeds customer deposit! Customer deposit : '+ deposit[$('#customer_id').val()]);
        }
    });
    $('input[name="paying_amount"]').on("input", function() {
        console.log($("#paid-amount").val());
        $("#change").text(parseFloat($("#paid-amount").val() - $(this).val()).toFixed(2));
    });

    // array data depend on warehouse
    var lims_product_array = [];
    var product_code = [];
    var product_name = [];
    var product_qty = [];
    var product_type = [];
    var product_id = [];
    var product_list = [];
    var qty_list = [];
    var cost_list = [];

    // array data with selection
    var product_price = [];
    var product_cost = [];
    var product_discount = [];
    var tax_rate = [];
    var tax_name = [];
    var tax_method = [];
    var unit_name = [];
    var unit_operator = [];
    var unit_operation_value = [];

    // temporary array
    var temp_unit_name = [];
    var temp_unit_operator = [];
    var temp_unit_operation_value = [];

    var exist_type = [];
    var exist_code = [];
    var exist_qty = [];
    var rowindex;
    var customer_group_rate;
    var row_product_price;
    var row_product_cost;
    var currency = <?php echo json_encode($general_setting->currency) ?>;

    var rownumber = $('table.order-list tbody tr:last').index();
    // console.log(rowindex);

    for(rowindex  =0; rowindex <= rownumber; rowindex++){
        product_price.push(parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.product-price').val()));
        product_cost.push(parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_cost_price').val()));
        exist_code.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(2)').text());
        exist_type.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.product-type').val());
        var total_discount = parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(6)').text());
        var quantity = parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.qty').val());
        exist_qty.push(quantity);
        product_discount.push((total_discount / quantity).toFixed(2));
        tax_rate.push(parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-rate').val()));
        tax_name.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-name').val());
        tax_method.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-method').val());
        temp_unit_name = $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit').val().split(',');
        unit_name.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit').val());
        unit_operator.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit-operator').val());
        unit_operation_value.push($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit-operation-value').val());
        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit').val(temp_unit_name[0]);
    }

    $('.selectpicker').selectpicker({
        style: 'btn-link',
    });

    $('[data-toggle="tooltip"]').tooltip();

    //assigning value
    $('select[name="customer_id"]').val($('input[name="customer_id_hidden"]').val());
    $('select[name="warehouse_id"]').val($('input[name="warehouse_id_hidden"]').val());
    $('select[name="biller_id"]').val($('input[name="biller_id_hidden"]').val());
    $('select[name="sale_status"]').val($('input[name="sale_status_hidden"]').val());
    $('select[name="order_tax_rate"]').val($('input[name="order_tax_rate_hidden"]').val());
    $('.selectpicker').selectpicker('refresh');

    $('#item').text($('input[name="item"]').val() + '(' + $('input[name="total_qty"]').val() + ')');
    $('#subtotal').text(parseFloat($('input[name="total_price"]').val()).toFixed(2));
    $('#order_tax').text(parseFloat($('input[name="order_tax"]').val()).toFixed(2));
    if(!$('input[name="order_discount"]').val())
        $('input[name="order_discount"]').val('0.00');
    $('#order_discount').text(parseFloat($('input[name="order_discount"]').val()).toFixed(2));
    if(!$('input[name="shipping_cost"]').val())
        $('input[name="shipping_cost"]').val('0.00');
    $('#shipping_cost').text(parseFloat($('input[name="shipping_cost"]').val()).toFixed(2));
    $('#grand_total').text(parseFloat($('input[name="grand_total"]').val()).toFixed(2));

    var id = $('select[name="customer_id"]').val();
    $.get('../getcustomergroup/' + id, function(data) {
        customer_group_rate = (data / 100);
    });

    var id = $('select[name="warehouse_id"]').val();
    $.get('../getproduct/' + id, function(data) {
        console.log(data);
        lims_product_array = [];
        product_code = data[0];
        product_name = data[1];
        product_qty = data[2];
        product_type = data[3];
        product_id = data[4];
        product_list = data[5];
        qty_list = data[6];
        console.log(product_code);

        $.each(product_code, function(index) {
            if(exist_code.includes(product_code[index])) {
                pos = exist_code.indexOf(product_code[index]);
                product_qty[index] = product_qty[index] + exist_qty[pos];
                exist_code.splice(pos, 1);
                exist_qty.splice(pos, 1);
                console.log(exist_code);
            }
            lims_product_array.push(product_code[index] + ' (' + product_name[index] + ')');
        });
        $.each(exist_code, function(index) {
            product_type.push(exist_type[index]);
            Array.from(product_code).push(exist_code[index]);
           Array.from(product_qty).push(exist_qty[index]);
        });
    });

    $('select[name="customer_id"]').on('change', function() {
        var id = $(this).val();
        $.get('../getcustomergroup/' + id, function(data) {
            customer_group_rate = (data / 100);
        });
    });

    $('select[name="warehouse_id"]').on('change', function() {
        var id = $(this).val();
        $.get('../getproduct/' + id, function(data) {
            lims_product_array = [];
            product_code = data[0];
            product_name = data[1];
            product_qty = data[2];
            product_type = data[3];
            product_id = data[4];
            product_list = data[5];
            qty_list = data[6];
            $.each(product_code, function(index) {
                lims_product_array.push(product_code[index] + ' (' + product_name[index] + ')');
            });
        });
    });

    var lims_productcodeSearch = $('#lims_productcodeSearch');
    lims_productcodeSearch.autocomplete({
        source: function(request, response) {
            var matcher = new RegExp(".?" + $.ui.autocomplete.escapeRegex(request.term), "i");
            response($.grep(lims_product_array, function(item) {
                return matcher.test(item);
            }));
        },
        response: function(event, ui) {
            if (ui.content.length == 1) {
                var data = ui.content[0].value;
                $(this).autocomplete( "close" );
                productSearch(data);
            };
        },
        select: function(event, ui) {
            var data = ui.item.value;
            productSearch(data);
        }
    });

    //Change quantity
    $("#myTable").on('input', '.qty', function() {
        rowindex = $(this).closest('tr').index();
        var size = $(this).closest('tr').find('td select.size').val() * 1;
        console.log(size);

        checkQuantity($(this).val() * 1, size, true);
        $('input[name="paying_amount"]').val($('input[name="grand_total"]').val());
        $("#change").text(parseFloat($("#paying-amount").val() - $('#paid-amount').val()).toFixed(2));
    });

    //Change size
    $("#myTable").on('change', '.size', function() {
        rowindex = $(this).closest('tr').index();
        var qty = $(this).closest('tr').find('td input.qty').val() * 1;
        checkQuantity(qty, $(this).val(), true);
        $('input[name="paying_amount"]').val($('input[name="grand_total"]').val());
        $("#change").text(parseFloat($("#paying-amount").val() - $('#paid-amount').val()).toFixed(2));
    });


    //Delete product
    $("table.order-list tbody").on("click", ".ibtnDel", function(event) {
        rowindex = $(this).closest('tr').index();
        product_price.splice(rowindex, 1);
        product_discount.splice(rowindex, 1);
        tax_rate.splice(rowindex, 1);
        tax_name.splice(rowindex, 1);
        tax_method.splice(rowindex, 1);
        unit_name.splice(rowindex, 1);
        unit_operator.splice(rowindex, 1);
        unit_operation_value.splice(rowindex, 1);
        $(this).closest("tr").remove();
        calculateTotal();
    });

    //Edit product
    $("table.order-list").on("click", ".edit-product", function() {
        rowindex = $(this).closest('tr').index();
        edit();
    });

    //Update product
    $('button[name="update_btn"]').on("click", function() {
        var edit_discount = $('input[name="edit_discount"]').val();
        var edit_qty = $('input[name="edit_qty"]').val();
        var edit_unit_price = $('input[name="edit_unit_price"]').val();

        if (parseFloat(edit_discount) > parseFloat(edit_unit_price)) {
            alert('Invalid Discount Input!');
            return;
        }

        var tax_rate_all = <?php echo json_encode($tax_rate_all) ?>;
        tax_rate[rowindex] = parseFloat(tax_rate_all[$('select[name="edit_tax_rate"]').val()]);
        tax_name[rowindex] = $('select[name="edit_tax_rate"] option:selected').text();
        if(product_type[pos] == 'standard'){
            var row_unit_operator = unit_operator[rowindex].slice(0, unit_operator[rowindex].indexOf(","));
            var row_unit_operation_value = unit_operation_value[rowindex].slice(0, unit_operation_value[rowindex].indexOf(","));
            if (row_unit_operator == '*') {
                product_price[rowindex] = $('input[name="edit_unit_price"]').val() / row_unit_operation_value;
            } else {
                product_price[rowindex] = $('input[name="edit_unit_price"]').val() * row_unit_operation_value;
            }
            var position = $('select[name="edit_unit"]').val();
            var temp_operator = temp_unit_operator[position];
            var temp_operation_value = temp_unit_operation_value[position];
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.sale-unit').val(temp_unit_name[position]);
            temp_unit_name.splice(position, 1);
            temp_unit_operator.splice(position, 1);
            temp_unit_operation_value.splice(position, 1);

            temp_unit_name.unshift($('select[name="edit_unit"] option:selected').text());
            temp_unit_operator.unshift(temp_operator);
            temp_unit_operation_value.unshift(temp_operation_value);

            unit_name[rowindex] = temp_unit_name.toString() + ',';
            unit_operator[rowindex] = temp_unit_operator.toString() + ',';
            unit_operation_value[rowindex] = temp_unit_operation_value.toString() + ',';
        }
        product_discount[rowindex] = $('input[name="edit_discount"]').val();
        checkQuantity(edit_qty, false);
    });

    function productSearch(data){
        $.ajax({
            type: 'GET',
            url: '../lims_product_search',
            data: {
                data: data
            },
            success: function(data) {
                var flag = 1;
                // console.log(data);
                $(".product-code").each(function(i) {
                    if ($(this).val() == data[1]) {
                        rowindex = i;
                        var qty = parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ') .qty').val()) + 1;
                        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ') .qty').val(qty);

                        var size = parseFloat($('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ') .size').val()) + 1;
                        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ') .size').val(size);

                        checkQuantity(String(qty), size, true);
                        flag = 0;
                    }
                });
                $("input[name='product_code_name']").val('');
                if (flag) {
                    var sizeDropdown = '';
                    var i;
                    for (i = 0; i < data[12].length; i++) {
                        if(i === 0) {
                            var initialSize = data[12][i]['size'];

                        }
                        sizeDropdown = sizeDropdown + '<option value="'+data[12][i]['size']+'">'+data[12][i]['size']+'</option>';
                    } 
                    var newRow = $("<tr>");
                    var cols = '';
                    temp_unit_name = (data[7]).split(',');
                    cols += '<td>' + data[0] + '<button type="button" class="edit-product btn btn-link" data-toggle="modal" data-target="#editModal"> <i class="fa fa-edit"></i></button></td>';
                    cols += '<td>' + data[1] + '</td>';
                    cols += '<td><select class="form-control size" name="size[]" required>'+sizeDropdown+'</select></td>';
                    cols += '<td><input type="number" class="form-control qty" name="qty[]" value="1" step="any" required/></td>';
                    cols += '<td class="net_unit_price"></td>';
                    cols += '<td class="discount">0.00</td>';
                    cols += '<td class="tax"></td>';
                    cols += '<td class="sub-total"></td>';
                    cols += '<td style="display: none;" class="sub-cost"></td>';
                    cols += '<td><button type="button" class="ibtnDel btn btn-md btn-danger"><?php echo e(trans("file.delete")); ?></button></td>';
                    cols += '<input type="hidden" class="product-code" name="product_code[]" value="' + data[1] + '"/>';
                    cols += '<input type="hidden" name="product_id[]" value="' + data[10] + '"/>';
                    cols += '<input type="hidden" name="product_variant_id[]" value="' + data[11] + '"/>';
                    cols += '<input type="hidden" class="sale-unit" name="sale_unit[]" value="' + temp_unit_name[0] + '"/>';
                    cols += '<input type="hidden" class="net_unit_price" name="net_unit_price[]" />';
                    cols += '<input type="hidden" class="net_cost_price" name="net_cost_price[]" />';
                    cols += '<input type="hidden" class="discount-value" name="discount[]" />';
                    cols += '<input type="hidden" class="tax-rate" name="tax_rate[]" value="' + data[4] + '"/>';
                    cols += '<input type="hidden" class="tax-value" name="tax[]" />';
                    cols += '<input type="hidden" class="subtotal-value" name="subtotal[]" />';
                    cols += '<input type="hidden" class="cost-total-value" name="costtotal[]" />';

                    newRow.append(cols);
                    $("table.order-list tbody").append(newRow);

                    product_price.push(parseFloat(data[2]) + parseFloat(data[2] * customer_group_rate));
                    product_cost.push(parseFloat(data[3]) + parseFloat(data[3] * customer_group_rate))
                    product_discount.push('0.00');
                    tax_rate.push(parseFloat(data[4]));
                    tax_name.push(data[5]);
                    tax_method.push(data[6]);
                    unit_name.push(data[7]);
                    unit_operator.push(data[8]);
                    unit_operation_value.push(data[9]);
                    rowindex = newRow.index();
                    checkQuantity(1, initialSize, true);
                }
            }
        });
    }

    function edit(){
        var row_product_name = $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(1)').text();
        var row_product_code = $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(2)').text();
        $('#modal_header').text(row_product_name + '(' + row_product_code + ')');

        var qty = $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.qty').val();
        $('input[name="edit_qty"]').val(qty);

        $('input[name="edit_discount"]').val(parseFloat(product_discount[rowindex]).toFixed(2));

        var tax_name_all = <?php echo json_encode($tax_name_all) ?>;
        pos = tax_name_all.indexOf(tax_name[rowindex]);
        $('select[name="edit_tax_rate"]').val(pos);

        pos = product_code.indexOf(row_product_code);
        if(product_type[pos] == 'standard'){
            unitConversion();
            temp_unit_name = (unit_name[rowindex]).split(',');
            temp_unit_name.pop();
            temp_unit_operator = (unit_operator[rowindex]).split(',');
            temp_unit_operator.pop();
            temp_unit_operation_value = (unit_operation_value[rowindex]).split(',');
            temp_unit_operation_value.pop();
            $('select[name="edit_unit"]').empty();
            $.each(temp_unit_name, function(key, value) {
                $('select[name="edit_unit"]').append('<option value="' + key + '">' + value + '</option>');
            });
            $("#edit_unit").show();
        }
        else{
            row_product_price = product_price[rowindex];
            $("#edit_unit").hide();
        }
        $('input[name="edit_unit_price"]').val(row_product_price.toFixed(2));
    }

    function checkQuantity(sale_qty, size, flag) {
        var row_product_code = $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(2)').text();
        // console.log(row_product_code);
        product_code = product_code.toString();
        pos = Array.from(product_code).indexOf(row_product_code);
        console.log(product_code);
        if(product_type[pos] == 'standard'){
            var operator = unit_operator[rowindex].split(',');
            var operation_value = unit_operation_value[rowindex].split(',');
            if(operator[0] == '*')
                total_qty = sale_qty * operation_value[0];
            else if(operator[0] == '/')
                total_qty = sale_qty / operation_value[0];
            if (total_qty > parseFloat(product_qty[pos])) {
                alert('Quantity exceeds stock quantity!');
                if (flag) {
                    sale_qty = sale_qty.substring(0, sale_qty.length - 1);
                    $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.qty').val(sale_qty);
                }
                else {
                    edit();
                    return;
                }
            }
        }
        else if(product_type[pos] == 'combo'){
            child_id = product_list[pos].split(',');
            child_qty = qty_list[pos].split(',');
            $(child_id).each(function(index) {
                var position = product_id.indexOf(parseInt(child_id[index]));
                if( parseFloat(sale_qty * child_qty[index]) > product_qty[position] ) {
                    alert('Quantity exceeds stock quantity!');
                    if (flag) {
                        sale_qty = sale_qty.substring(0, sale_qty.length - 1);
                        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.qty').val(sale_qty);
                    }
                    else {
                        edit();
                        flag = true;
                        return false;
                    }
                }
            });
        }

        if(!flag){
            $('#editModal').modal('hide');
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.qty').val(sale_qty);
        }
        var qty = sale_qty * size;
        calculateRowProductData(qty);
    }

    function calculateRowProductData(quantity) {
        if(product_type[pos] == 'standard')
            unitConversion();
        else
            row_product_price = product_price[rowindex];
            row_product_cost = product_cost[rowindex];

        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(5)').text((product_discount[rowindex] * quantity).toFixed(2));
        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.discount-value').val((product_discount[rowindex] * quantity).toFixed(2));
        $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-rate').val(tax_rate[rowindex].toFixed(2));

        if (tax_method[rowindex] == 1) {
            var net_unit_price = row_product_price - product_discount[rowindex];
            var net_unit_cost = row_product_cost;
            var tax = net_unit_price * quantity * (tax_rate[rowindex] / 100);
            var sub_total = (net_unit_price * quantity) + tax;
            var sub_cost = (net_unit_cost * quantity);

            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(5)').text(net_unit_price.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_unit_price').val(net_unit_price.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_cost_price').val(net_unit_cost.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(7)').text(tax.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-value').val(tax.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(8)').text(sub_total.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(9)').text(sub_cost.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.subtotal-value').val(sub_total.toFixed(2));
            // $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.cost-total-value').val(sub_cost.toFixed(2));


            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(5)').text(net_unit_price.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_unit_price').val(net_unit_price.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_cost_price').val(net_unit_cost.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(7)').text(tax.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-value').val(tax.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(8)').text(sub_total.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(9)').text(sub_cost.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.subtotal-value').val(sub_total.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.cost-total-value').val(sub_cost.toFixed(2));

            //
            // cols += '<td>' + data[0] + '<button type="button" class="edit-product btn btn-link" data-toggle="modal" data-target="#editModal"> <i class="fa fa-edit"></i></button></td>';
            // cols += '<td>' + data[1] + '</td>';
            // cols += '<td><select class="form-control size" name="size[]" required>'+sizeDropdown+'</select></td>';
            // cols += '<td><input type="number" class="form-control qty" name="qty[]" value="1" step="any" required/></td>';
            // cols += '<td class="net_unit_price"></td>';
            // cols += '<td class="discount">0.00</td>';
            // cols += '<td class="tax"></td>';
            // cols += '<td class="sub-total"></td>';
            // cols += '<td style="display: none;" class="sub-cost"></td>';

        } else {
            var sub_total_unit = row_product_price - product_discount[rowindex];
            var net_unit_price = (100 / (100 + tax_rate[rowindex])) * sub_total_unit;
            var net_unit_cost = row_product_cost;
            var tax = (sub_total_unit - net_unit_price) * quantity;
            var sub_total = sub_total_unit * quantity;
            var sub_cost = (net_unit_cost * quantity);

            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(5)').text(net_unit_price.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_unit_price').val(net_unit_price.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.net_cost_price').val(net_unit_cost.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(7)').text(tax.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.tax-value').val(tax.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(8)').text(sub_total.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('td:nth-child(9)').text(sub_cost.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.subtotal-value').val(sub_total.toFixed(2));
            $('table.order-list tbody tr:nth-child(' + (rowindex + 1) + ')').find('.cost-total-value').val(sub_cost.toFixed(2));
        }

        calculateTotal();
    }

    function unitConversion() {
        var row_unit_operator = unit_operator[rowindex].slice(0, unit_operator[rowindex].indexOf(","));
        var row_unit_operation_value = unit_operation_value[rowindex].slice(0, unit_operation_value[rowindex].indexOf(","));

        if (row_unit_operator == '*') {
            row_product_price = product_price[rowindex] * row_unit_operation_value;
            row_product_cost = product_cost[rowindex] * row_unit_operation_value;
        } else {
            row_product_price = product_price[rowindex] / row_unit_operation_value;
            row_product_cost = product_cost[rowindex] / row_unit_operation_value;
        }
    }

    function calculateTotal() {
        //Sum of quantity
        var total_qty = 0;
        $(".qty").each(function() {

            if ($(this).val() == '') {
                total_qty += 0;
            } else {
                total_qty += parseFloat($(this).val());
            }
        });
        $("#total-qty").text(total_qty);
        $('input[name="total_qty"]').val(total_qty);

        //Sum of discount
        var total_discount = 0;
        $(".discount").each(function() {
            total_discount += parseFloat($(this).text());
        });
        $("#total-discount").text(total_discount.toFixed(2));
        $('input[name="total_discount"]').val(total_discount.toFixed(2));

        //Sum of tax
        var total_tax = 0;
        $(".tax").each(function() {
            total_tax += parseFloat($(this).text());
        });
        $("#total-tax").text(total_tax.toFixed(2));
        $('input[name="total_tax"]').val(total_tax.toFixed(2));

        //Sum of subtotal
        var total = 0;
        $(".sub-total").each(function() {
            total += parseFloat($(this).text());
        });
        $("#total").text(total.toFixed(2));
        $('input[name="total_price"]').val(total.toFixed(2));
        var cost = 0;
        $(".sub-cost").each(function() {
            cost += parseFloat($(this).text());
        });

        $('input[name="total_cost"]').val(cost.toFixed(2));

        calculateGrandTotal();
    }

    function calculateGrandTotal() {

        var item = $('table.order-list tbody tr:last').index();

        var total_qty = parseFloat($('#total-qty').text());
        var subtotal = parseFloat($('#total').text());
        var order_tax = parseFloat($('select[name="order_tax_rate"]').val());
        var order_discount = parseFloat($('input[name="order_discount"]').val());
        var shipping_cost = parseFloat($('input[name="shipping_cost"]').val());

        if (!order_discount)
            order_discount = 0.00;
        if (!shipping_cost)
            shipping_cost = 0.00;

        item = ++item + '(' + total_qty + ')';
        order_tax = (subtotal - order_discount) * (order_tax / 100);
        var grand_total = (subtotal + order_tax + shipping_cost) - order_discount;
        $('input[name="grand_total"]').val(grand_total.toFixed(2));
        if($('input[name="coupon_active"]').val()) {
            couponDiscount();
            var coupon_discount = parseFloat($('input[name="coupon_discount"]').val());
            if (!coupon_discount)
                coupon_discount = 0.00;
            grand_total -= coupon_discount;
        }

        $('#item').text(item);
        $('input[name="item"]').val($('table.order-list tbody tr:last').index() + 1);
        $('#subtotal').text(subtotal.toFixed(2));
        $('#order_tax').text(order_tax.toFixed(2));
        $('input[name="order_tax"]').val(order_tax.toFixed(2));
        $('#order_discount').text(order_discount.toFixed(2));
        $('#shipping_cost').text(shipping_cost.toFixed(2));
        $('#grand_total').text(grand_total.toFixed(2));
        $('input[name="grand_total"]').val(grand_total.toFixed(2));
    }

    function couponDiscount() {
        var rownumber = $('table.order-list tbody tr:last').index();
        if (rownumber < 0) {
            alert("Please insert product to order table!")
        }
        else{
            if($('input[name="coupon_type"]').val() == 'fixed'){
                if( $('input[name="grand_total"]').val() >= $('input[name="coupon_minimum_amount"]').val() ) {
                    $('input[name="grand_total"]').val( $('input[name="grand_total"]').val() - $('input[name="coupon_amount"]').val() );
                }
                else
                    alert('Grand Total is not sufficient for discount! Required '+ $('input[name="coupon_minimum_amount"]').val() + ' ' + currency);
            }
            else{
                var grand_total = $('input[name="grand_total"]').val();
                var coupon_discount = grand_total * (parseFloat($('input[name="coupon_amount"]').val()) / 100);
                grand_total = grand_total - coupon_discount;
                $('input[name="grand_total"]').val(grand_total);
                $('input[name="coupon_discount"]').val(coupon_discount);
                $('#coupon-text').text(parseFloat(coupon_discount).toFixed(2));
            }
        }
    }

    $('input[name="order_discount"]').on("input", function() {
        calculateGrandTotal();
    });

    $('input[name="shipping_cost"]').on("input", function() {
        calculateGrandTotal();
    });

    $('select[name="order_tax_rate"]').on("change", function() {
        calculateGrandTotal();
    });

    $(window).keydown(function(e){
        if (e.which == 13) {
            var $targ = $(e.target);
            if (!$targ.is("textarea") && !$targ.is(":button,:submit")) {
                var focusNext = false;
                $(this).find(":input:visible:not([disabled],[readonly]), a").each(function(){
                    if (this === e.target) {
                        focusNext = true;
                    }
                    else if (focusNext){
                        $(this).focus();
                        return false;
                    }
                });
                return false;
            }
        }
    });

    $('#payment-form').on('submit',function(e){
        var rownumber = $('table.order-list tbody tr:last').index();
        if (rownumber < 0) {
            alert("Please insert product to order table!")
            e.preventDefault();
        }
    });
</script>
<?php $__env->stopSection(); ?> <?php $__env->startSection('scripts'); ?>
<script type="text/javascript" src="https://js.stripe.com/v3/"></script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>