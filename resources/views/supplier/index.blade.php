@extends('layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div> 
@endif
@if(session()->has('message'))
  <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{!! session()->get('message') !!}</div> 
@endif
<section>
    <div class="container-fluid">
        @if(in_array("suppliers-add", $all_permission))
        <a href="{{route('supplier.create')}}" class="btn btn-info"><i class="fa fa-plus"></i> {{trans('file.Add Supplier')}}</a>
        <a href="#" data-toggle="modal" data-target="#importSupplier" class="btn btn-primary"><i class="fa fa-file"></i> {{trans('file.Import Supplier')}}</a>
        @endif
    </div>
    <div class="table-responsive">
        <table id="supplier-table" class="table table-striped">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>{{trans('file.Image')}}</th>
                    <th>{{trans('file.name')}}</th>
                    <th>{{trans('file.Company Name')}}</th>
                    <th>{{trans('file.VAT Number')}}</th>
                    <th>{{trans('file.Email')}}</th>
                    <th>{{trans('file.Phone Number')}}</th>
                    <th>{{trans('file.Balance')}}</th>
                    <th>{{trans('file.Address')}}</th>
                    <th class="not-exported">{{trans('file.action')}}</th>
                </tr>
            </thead>
            <tbody>
                @foreach($lims_supplier_all as $key=>$supplier)
                <tr data-id="{{$supplier->id}}">
                    <td>{{$key}}</td>
                    @if($supplier->image)
                    <td> <img src="{{url('public/images/supplier',$supplier->image)}}" height="80" width="80">
                    </td>
                    @else
                    <td>No Image</td>
                    @endif
                    <td>{{ $supplier->name }}</td>
                    <td>{{ $supplier->company_name}}</td>
                    <td>{{ $supplier->vat_number}}</td>
                    <td>{{ $supplier->email}}</td>
                    <td>{{ $supplier->phone_number}}</td>
                    <td>{{ $supplier->deposit}}</td>
                    <td>{{ $supplier->address}}
                            @if($supplier->city){{ ', '.$supplier->city}}@endif
                            @if($supplier->state){{ ', '.$supplier->state}}@endif
                            @if($supplier->postal_code){{ ', '.$supplier->postal_code}}@endif
                            @if($supplier->country){{ ', '.$supplier->country}}@endif</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans('file.action')}}
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">
                                    <li>
                                        <button type="button" data-id="{{$supplier->id}}" class="sdeposit btn btn-link" data-toggle="modal" data-target="#depositModal" ><i class="fa fa-plus"></i> {{trans('file.Add Deposit')}}</button>
                                    </li>
                                    <li>
                                        <button type="button" data-id="{{$supplier->id}}" class="sgetDeposit btn btn-link"><i class="fa fa-money"></i> {{trans('file.View Deposit')}}</button>
                                    </li>
                                <li>
                                    <a href="{{ route('supplier.edit', ['id'=>$supplier->id]) }}" class="sedit btn btn-link"><i class="fa fa-edit"></i>{{trans('file.edit')}}</a>
                                </li>
                                <li>
                                    <button type="button" data-id="{{$supplier->id}}" class="sdelete btn btn-link"><i class="fa fa-trash"></i></i> {{trans('file.delete')}}</button>
                                </li>

                                <li class="divider"></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot class="tfoot active">
            <th></th>
            <th>{{trans('file.Total')}}</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            </tfoot>

        </table>
    </div>
</section>

<div id="importSupplier" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
	<div role="document" class="modal-dialog">
	  <div class="modal-content">
	  	{!! Form::open(['route' => 'supplier.import', 'method' => 'post', 'files' => true]) !!}
	    <div class="modal-header">
	      <h5 id="exampleModalLabel" class="modal-title">{{trans('file.Import Supplier')}}</h5>
	      <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
	    </div>
	    <div class="modal-body">
	      <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
	       <p>{{trans('file.The correct column order is')}} (name*, image, company_name*, vat_number, email*, phone_number*, address*, city*,state, postal_code, country) {{trans('file.and you must follow this')}}.</p>
           <p>{{trans('file.To display Image it must be stored in')}} public/images/supplier {{trans('file.directory')}}</p>
	        <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label><strong>{{trans('file.Upload CSV File')}} *</strong></label>
                        {{Form::file('file', array('class' => 'form-control','required'))}}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label><strong> {{trans('file.Sample File')}}</strong></label>
                        <a href="public/sample_file/sample_supplier.csv" class="btn btn-info btn-block btn-md"><i class="fa fa-download"></i> {{trans('file.Download')}}</a>
                    </div>
                </div>
            </div>
	        <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary" id="submit-button">
		</div>
		{!! Form::close() !!}
	  </div>
	</div>
</div>

{{--new--}}

<div id="depositModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            {!! Form::open(['route' => 'supplier.addDeposit', 'method' => 'post']) !!}
            <div class="modal-header">
                <h5 id="exampleModalLabel" class="modal-title">{{trans('file.Add Deposit')}}</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                    <label><strong>{{trans('file.credit')}} *</strong></label>
                    <input type="number" name="amount" step="any" value="0" class="form-control" required>
                </div>

                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                    <label><strong>{{trans('file.debit')}} *</strong></label>
                    <input id="debit" type="number" value="0" name="remaining" step="any" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="hidden" name="supplier_id">
                <!--<label><strong>{{trans('file.Remaining Amount')}} *</strong></label>-->
                    <input id="debit_hiden" type="hidden" value="0" name="debit" step="any" class="form-control" required>
                </div>
                <div class="form-group">
                    <label><strong>{{trans('file.Note')}}</strong></label>
                    <textarea name="note" rows="4" class="form-control"></textarea>
                </div>
                <input type="hidden" name="my_status" value="1">
                <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary" id="submit-button">
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>

<div id="view-deposit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 id="exampleModalLabel" class="modal-title">{{trans('file.All Deposit')}}</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <table class="table table-hover deposit-list">
                    <thead>
                    <tr>
                        <th>{{trans('file.date')}}</th>
                        <th>{{trans('file.debit')}}</th>
                        <th>{{trans('file.credit')}}</th>
                        <th>{{trans('file.Note')}}</th>
                        <th>{{trans('file.Created By')}}</th>
{{--                        <th>{{trans('file.action')}}</th>--}}
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>

                </table>
            </div>
        </div>
    </div>
</div>

{{--end--}}

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

    // $(".sdelete").on("click", function() {
    //     var id = $(this).data('id').toString();
    //     $.get('supplier/delete/' + id, function(data) {
    //
    // });

    $(".sdelete").on("click", function() {
        var id = $(this).data('id').toString();
        $.get('supplier/delete/' + id, function(data){
            location.reload();
        });
    });



    $(".sdeposit").on("click", function() {
        var id = $(this).data('id').toString();
        $("#depositModal input[name='supplier_id']").val(id);
    });

    $('#debit').change(function() {
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
                {{--cols += '<td><div class="btn-group"><button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans("file.action")}}<span class="caret"></span><span class="sr-only">Toggle Dropdown</span></button><ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu"><li><button type="button" class="btn btn-link edit-btn" data-id="' + data[0][index] +'" data-toggle="modal" data-target="#edit-deposit"><i class="fa fa-edit"></i> {{trans("file.edit")}}</button></li><li class="divider"></li>{{ Form::open(['route' => 'customer.deleteDeposit', 'method' => 'post'] ) }}<li><input type="hidden" name="id" value="' + data[0][index] + '" /> <button type="submit" class="btn btn-link" onclick="return confirmDelete()"><i class="fa fa-trash"></i> {{trans("file.delete")}}</button></li>{{ Form::close() }}</ul></div></td>'--}}
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
            'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
             "info":      '{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)',
            "search":  '{{trans("file.Search")}}',
            'paginate': {
                    'previous': '{{trans("file.Previous")}}',
                    'next': '{{trans("file.Next")}}'
            }
        },
        'columnDefs': [
            {
                "orderable": false,
                'targets': 0
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
                text: '{{trans("file.PDF")}}',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible',
                    stripHtml: false
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true,
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
                text: '{{trans("file.CSV")}}',
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
                text: '{{trans("file.Print")}}',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible',
                    stripHtml: false
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                text: '{{trans("file.delete")}}',
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
                text: '{{trans("file.Column visibility")}}',
                columns: ':gt(0)'
            },
        ],
        drawCallback: function () {
            var api = this.api();
            datatable_sum(api, false);
        }
    } );

    function datatable_sum(dt_selector, is_calling_first) {
        if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
            var rows = dt_selector.rows( '.selected' ).indexes();
            $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
        }
        else {
            $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
        }
    }

    if(all_permission.indexOf("suppliers-delete") === -1)
        $('.buttons-delete').addClass('d-none');

</script>
@endsection