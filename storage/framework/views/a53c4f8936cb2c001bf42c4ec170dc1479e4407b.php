 <?php $__env->startSection('content'); ?>
<?php if(session()->has('not_permitted')): ?>
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo e(session()->get('not_permitted')); ?></div> 
<?php endif; ?>
<?php if(session()->has('message')): ?>
  <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo session()->get('message'); ?></div> 
<?php endif; ?>
<section>
    <div class="container-fluid">
        <?php if(in_array("suppliers-add", $all_permission)): ?>
        <a href="<?php echo e(route('supplier.create')); ?>" class="btn btn-info"><i class="fa fa-plus"></i> <?php echo e(trans('file.Add Supplier')); ?></a>
        <a href="#" data-toggle="modal" data-target="#importSupplier" class="btn btn-primary"><i class="fa fa-file"></i> <?php echo e(trans('file.Import Supplier')); ?></a>
        <?php endif; ?>
    </div>
    <div class="table-responsive">
        <table id="supplier-table" class="table table-striped">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th><?php echo e(trans('file.Image')); ?></th>
                    <th><?php echo e(trans('file.name')); ?></th>
                    <th><?php echo e(trans('file.Company Name')); ?></th>
                    <th><?php echo e(trans('file.VAT Number')); ?></th>
                    <th><?php echo e(trans('file.Email')); ?></th>
                    <th><?php echo e(trans('file.Phone Number')); ?></th>
                    <th>Deposit</th>
                    <th><?php echo e(trans('file.Address')); ?></th>
                    <th class="not-exported"><?php echo e(trans('file.action')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $lims_supplier_all; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$supplier): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr data-id="<?php echo e($supplier->id); ?>">
                    <td><?php echo e($key); ?></td>
                    <?php if($supplier->image): ?>
                    <td> <img src="<?php echo e(url('public/images/supplier',$supplier->image)); ?>" height="80" width="80">
                    </td>
                    <?php else: ?>
                    <td>No Image</td>
                    <?php endif; ?>
                    <td><?php echo e($supplier->name); ?></td>
                    <td><?php echo e($supplier->company_name); ?></td>
                    <td><?php echo e($supplier->vat_number); ?></td>
                    <td><?php echo e($supplier->email); ?></td>
                    <td><?php echo e($supplier->phone_number); ?></td>
                    <td><?php echo e($supplier->deposit); ?></td>
                    <td><?php echo e($supplier->address); ?>

                            <?php if($supplier->city): ?><?php echo e(', '.$supplier->city); ?><?php endif; ?>
                            <?php if($supplier->state): ?><?php echo e(', '.$supplier->state); ?><?php endif; ?>
                            <?php if($supplier->postal_code): ?><?php echo e(', '.$supplier->postal_code); ?><?php endif; ?>
                            <?php if($supplier->country): ?><?php echo e(', '.$supplier->country); ?><?php endif; ?></td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo e(trans('file.action')); ?>

                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">





                                    <li>
                                        <button type="button" data-id="<?php echo e($supplier->id); ?>" class="sdeposit btn btn-link" data-toggle="modal" data-target="#depositModal" ><i class="fa fa-plus"></i> <?php echo e(trans('file.Add Deposit')); ?></button>
                                    </li>
                                    <li>
                                        <button type="button" data-id="<?php echo e($supplier->id); ?>" class="sgetDeposit btn btn-link"><i class="fa fa-money"></i> <?php echo e(trans('file.View Deposit')); ?></button>
                                    </li>
                                <li class="divider"></li>







                            </ul>
                        </div>
                    </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
</section>

<div id="importSupplier" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
	<div role="document" class="modal-dialog">
	  <div class="modal-content">
	  	<?php echo Form::open(['route' => 'supplier.import', 'method' => 'post', 'files' => true]); ?>

	    <div class="modal-header">
	      <h5 id="exampleModalLabel" class="modal-title"><?php echo e(trans('file.Import Supplier')); ?></h5>
	      <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
	    </div>
	    <div class="modal-body">
	      <p class="italic"><small><?php echo e(trans('file.The field labels marked with * are required input fields')); ?>.</small></p>
	       <p><?php echo e(trans('file.The correct column order is')); ?> (name*, image, company_name*, vat_number, email*, phone_number*, address*, city*,state, postal_code, country) <?php echo e(trans('file.and you must follow this')); ?>.</p>
           <p><?php echo e(trans('file.To display Image it must be stored in')); ?> public/images/supplier <?php echo e(trans('file.directory')); ?></p>
	        <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label><strong><?php echo e(trans('file.Upload CSV File')); ?> *</strong></label>
                        <?php echo e(Form::file('file', array('class' => 'form-control','required'))); ?>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label><strong> <?php echo e(trans('file.Sample File')); ?></strong></label>
                        <a href="public/sample_file/sample_supplier.csv" class="btn btn-info btn-block btn-md"><i class="fa fa-download"></i> <?php echo e(trans('file.Download')); ?></a>
                    </div>
                </div>
            </div>
	        <input type="submit" value="<?php echo e(trans('file.submit')); ?>" class="btn btn-primary" id="submit-button">
		</div>
		<?php echo Form::close(); ?>

	  </div>
	</div>
</div>



<div id="depositModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <?php echo Form::open(['route' => 'supplier.addDeposit', 'method' => 'post']); ?>

            <div class="modal-header">
                <h5 id="exampleModalLabel" class="modal-title"><?php echo e(trans('file.Add Deposit')); ?></h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <p class="italic"><small><?php echo e(trans('file.The field labels marked with * are required input fields')); ?>.</small></p>
                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                    <label><strong><?php echo e(trans('file.debit')); ?> *</strong></label>
                    <input type="number" name="amount" step="any" value="0" class="form-control" required>
                </div>

                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                    <label><strong><?php echo e(trans('file.credit')); ?> *</strong></label>
                    <input id="debit" type="number" value="0" name="remaining" step="any" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                <!--<label><strong><?php echo e(trans('file.Remaining Amount')); ?> *</strong></label>-->
                    <input id="debit_hiden" type="hidden" value="0" name="debit" step="any" class="form-control" required>
                </div>
                <div class="form-group">
                    <label><strong><?php echo e(trans('file.Note')); ?></strong></label>
                    <textarea name="note" rows="4" class="form-control"></textarea>
                </div>
                <input type="hidden" name="my_status" value="1">
                <input type="submit" value="<?php echo e(trans('file.submit')); ?>" class="btn btn-primary" id="submit-button">
            </div>
            <?php echo Form::close(); ?>

        </div>
    </div>
</div>

<div id="view-deposit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 id="exampleModalLabel" class="modal-title"><?php echo e(trans('file.All Deposit')); ?></h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <table class="table table-hover deposit-list">
                    <thead>
                    <tr>
                        <th><?php echo e(trans('file.date')); ?></th>
                        <th><?php echo e(trans('file.credit')); ?></th>
                        <th><?php echo e(trans('file.debit')); ?></th>
                        <th><?php echo e(trans('file.Note')); ?></th>
                        <th><?php echo e(trans('file.Created By')); ?></th>

                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">

    $("ul#people").siblings('a').attr('aria-expanded','true');
    $("ul#people").addClass("show");
    $("ul#people #supplier-list-menu").addClass("active");

    var all_permission = <?php echo json_encode($all_permission) ?>;
    var supplier_id = [];
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;
    var prevValue = null;


    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(".sdeposit").on("click", function() {
        var id = $(this).data('id').toString();
        $("#depositModal input[name='supplier_id']").val(id);
    });

    $('#debit').change(function() {
        console.log('changed');
        prevValue = this.value;
        $('#debit_hiden').val(this.value);

    });

    $('#debit').keyup(function() {
        if(prevValue !== this.value) {
            $(this).trigger('change');
            $('#debit_hiden').val($('#debit').val());

        }
    });

	function confirmDelete() {
	    if (confirm("Are you sure want to delete?")) {
	        return true;
	    }
	    return false;
	}

    $(".sgetDeposit").on("click", function() {
        var id = $(this).data('id').toString();
        $.get('supplier/getDeposit/' + id, function(data) {
            $(".deposit-list tbody").remove();
            var newBody = $("<tbody>");
            console.log(data);
            $.each(data[0], function(index){
                var newRow = $("<tr>");
                var cols = '';

                cols += '<td>' + data[1][index] + '</td>';
                cols += '<td>' + data[2][index] + '</td>';
                cols += '<td>' + data[3][index] + '</td>';
                if(data[4][index])
                    cols += '<td>' + data[4][index] + '</td>';
                else
                    cols += '<td>N/A</td>';
                cols += '<td>' + data[5][index] + '<br>' + data[6][index] + '</td>';
                
                newRow.append(cols);
                newBody.append(newRow);
                $("table.deposit-list").append(newBody);
            });
            $("#view-deposit").modal('show');
        });
    });


    $('#supplier-table').DataTable( {
        "order": [],
        'language': {
            'lengthMenu': '_MENU_ <?php echo e(trans("file.records per page")); ?>',
             "info":      '<?php echo e(trans("file.Showing")); ?> _START_ - _END_ (_TOTAL_)',
            "search":  '<?php echo e(trans("file.Search")); ?>',
            'paginate': {
                    'previous': '<?php echo e(trans("file.Previous")); ?>',
                    'next': '<?php echo e(trans("file.Next")); ?>'
            }
        },
        'columnDefs': [
            {
                "orderable": false,
                'targets': [0, 1, 8]
            },
            {
                'checkboxes': {
                   'selectRow': true
                },
                'targets': 0
            }
        ],
        'select': { style: 'multi',  selector: 'td:first-child'},
        'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
        dom: '<"row"lfB>rtip',
        buttons: [
            {
                extend: 'pdf',
                text: '<?php echo e(trans("file.PDF")); ?>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible',
                    stripHtml: false
                },
                customize: function(doc) {
                    for (var i = 1; i < doc.content[1].table.body.length; i++) {
                        if (doc.content[1].table.body[i][0].text.indexOf('<img src=') !== -1) {
                            var imagehtml = doc.content[1].table.body[i][0].text;
                            var regex = /<img.*?src=['"](.*?)['"]/;
                            var src = regex.exec(imagehtml)[1];
                            var tempImage = new Image();
                            tempImage.src = src;
                            var canvas = document.createElement("canvas");
                            canvas.width = tempImage.width;
                            canvas.height = tempImage.height;
                            var ctx = canvas.getContext("2d");
                            ctx.drawImage(tempImage, 0, 0);
                            var imagedata = canvas.toDataURL("image/png");
                            delete doc.content[1].table.body[i][0].text;
                            doc.content[1].table.body[i][0].image = imagedata;
                            doc.content[1].table.body[i][0].fit = [30, 30];
                        }
                    }
                },
            },
            {
                extend: 'csv',
                text: '<?php echo e(trans("file.CSV")); ?>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible',
                    format: {
                        body: function ( data, row, column, node ) {
                            if (column === 0 && (data.indexOf('<img src=') !== -1)) {
                                var regex = /<img.*?src=['"](.*?)['"]/;
                                data = regex.exec(data)[1];                 
                            }
                            return data;
                        }
                    }
                },
            },
            {
                extend: 'print',
                text: '<?php echo e(trans("file.Print")); ?>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible',
                    stripHtml: false
                },
            },
            {
                text: '<?php echo e(trans("file.delete")); ?>',
                className: 'buttons-delete',
                action: function ( e, dt, node, config ) {
                    if(user_verified == '1') {
                        supplier_id.length = 0;
                        $(':checkbox:checked').each(function(i){
                            if(i){
                                supplier_id[i-1] = $(this).closest('tr').data('id');
                            }
                        });
                        if(supplier_id.length && confirm("Are you sure want to delete?")) {
                            $.ajax({
                                type:'POST',
                                url:'supplier/deletebyselection',
                                data:{
                                    supplierIdArray: supplier_id
                                },
                                success:function(data){
                                    alert(data);
                                }
                            });
                            dt.rows({ page: 'current', selected: true }).remove().draw(false);
                        }
                        else if(!supplier_id.length)
                            alert('No supplier is selected!');
                    }
                    else
                        alert('This feature is disable for demo!');
                }
            },
            {
                extend: 'colvis',
                text: '<?php echo e(trans("file.Column visibility")); ?>',
                columns: ':gt(0)'
            },
        ],
    } );

    if(all_permission.indexOf("suppliers-delete") == -1)
        $('.buttons-delete').addClass('d-none');

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>