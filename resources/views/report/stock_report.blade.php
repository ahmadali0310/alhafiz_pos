@extends('layout.main') @section('content')
{{--    @if(empty($product_name))--}}
{{--        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{'No Data exist between this date range!'}}</div>--}}
{{--    @endif--}}
    @if(session()->has('not_permitted'))
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
    @endif

    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center">{{trans('file.Product Report')}}</h3>
                </div>
                {!! Form::open(['route' => 'report.stock', 'method' => 'post']) !!}
                <div class="row">
{{--                    <div class="col-md-4 offset-md-2 mt-3">--}}
{{--                        <div class="form-group row">--}}
{{--                            <label class="d-tc mt-2"><strong>{{trans('file.Choose Your Date')}}</strong> &nbsp;</label>--}}
{{--                            <div class="d-tc">--}}
{{--                                <div class="input-group">--}}
{{--                                    <input type="text" class="daterangepicker-field form-control" value="{{$start_date}} To {{$end_date}}" required />--}}
{{--                                    <input type="hidden" name="start_date" value="{{$start_date}}" />--}}
{{--                                    <input type="hidden" name="end_date" value="{{$end_date}}" />--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                    <div class="col-md-2 ml-5 mt-3">
                        <div class="form-group row">
                            <label class="d-tc mt-2"><strong>{{trans('file.Choose Warehouse')}}</strong> &nbsp;</label>
                            <div class="d-tc">
                                <input type="hidden" name="warehouse_id_hidden" value="{{$warehouse_id}}" />
                                <select id="warehouse_id" name="warehouse_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" >
{{--                                    <option value="1">{{trans('file.All Warehouse')}}</option>--}}
                                    @foreach($lims_warehouse_list as $warehouse)
                                        <option value="{{$warehouse->id}}">{{$warehouse->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mt-3">
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
                        </div>
                    </div>
                </div>
                {!! Form::close() !!}

                <div class="table-responsive mb-4">
                    <table id="report-table" class="table table-hover">
                        <thead>
                        <tr>
                            <th class="not-exported"></th>
                            <th>Name</th>
                            <th>Code</th>
                            <th>Size</th>
                            <th>Product Details</th>
                            <th>Warehouse</th>
                            <th>Quantity</th>
                            <th>Sub Quantity</th>
                            <th>Total Cost</th>
                        </tr>
                        </thead>
                        <tbody>

                            @foreach($users as $key)
                                <tr>
                                    <td></td>
                                    <td>{{$key->name}}</td>
                                    <td>{{$key->code}}</td>
                                    <td>{{$key->size}}</td>
                                    <td>{{$key->product_details}}</td>
                                    @if($key->warehouse_id == 1)
                                        <td>Shop</td>
                                    @else
                                        <td>Warehouse</td>
                                    @endif
                                    <td>{{$key->qty}}</td>
                                    @if($key->sub_qty == $key->size)
                                        <td>0</td>
                                    @else
                                        <td>{{$key->sub_qty}}</td>
                                    @endif
                                    @if($key->sub_qty == $key->size)
                                        <td>{{($key->size * $key->cost * $key->qty) + $key->cost * 0}}</td>
                                    @else
                                        <td>{{($key->size * $key->cost * $key->qty) + $key->cost * $key->sub_qty}}</td>
                                    @endif
{{--                                    @if($key->sub_qty == $key->size)--}}

{{--                                    @endif--}}
                                </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                        <th></th>
                        <th>Total</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        <th>0.00</th>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript">

        $("ul#report").siblings('a').attr('aria-expanded','true');
        $("ul#report").addClass("show");
        $("ul#report #stock-report-menu").addClass("active");

        $('#warehouse_id').val($('input[name="warehouse_id_hidden"]').val());

        $('#report-table').DataTable( {
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
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'csv',
                    text: '{{trans("file.CSV")}}',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'print',
                    text: '{{trans("file.Print")}}',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'colvis',
                    text: '{{trans("file.Column visibility")}}',
                    columns: ':gt(0)'
                }
            ],
            drawCallback: function () {
                var api = this.api();
                datatable_sum(api, false);
            }
        } );

        function datatable_sum(dt_selector, is_calling_first) {
            if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
                var rows = dt_selector.rows( '.selected' ).indexes();

                $( dt_selector.column( 2 ).footer() ).html(dt_selector.cells( rows, 2, { page: 'current' } ).data().sum().toFixed(2));
                $( dt_selector.column( 3 ).footer() ).html(dt_selector.cells( rows, 3, { page: 'current' } ).data().sum());
                $( dt_selector.column( 4 ).footer() ).html(dt_selector.cells( rows, 4, { page: 'current' } ).data().sum().toFixed(2));
                $( dt_selector.column( 5 ).footer() ).html(dt_selector.cells( rows, 5, { page: 'current' } ).data().sum());
                $( dt_selector.column( 6 ).footer() ).html(dt_selector.cells( rows, 6, { page: 'current' } ).data().sum().toFixed(2));
                $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum());
                $( dt_selector.column( 8 ).footer() ).html(dt_selector.cells( rows, 8, { page: 'current' } ).data().sum());
            }
            else {
                $( dt_selector.column( 2 ).footer() ).html(dt_selector.column( 2, {page:'current'} ).data().sum().toFixed(2));
                $( dt_selector.column( 3 ).footer() ).html(dt_selector.column( 3, {page:'current'} ).data().sum());
                $( dt_selector.column( 4 ).footer() ).html(dt_selector.column( 4, {page:'current'} ).data().sum().toFixed(2));
                $( dt_selector.column( 5 ).footer() ).html(dt_selector.column( 5, {page:'current'} ).data().sum());
                $( dt_selector.column( 6 ).footer() ).html(dt_selector.column( 6, {page:'current'} ).data().sum().toFixed(2));
                $( dt_selector.column( 7 ).footer() ).html(dt_selector.column( 7, {page:'current'} ).data().sum());
                $( dt_selector.column( 8 ).footer() ).html(dt_selector.column( 8, {page:'current'} ).data().sum());
            }
        }

        //
        // $(".daterangepicker-field").daterangepicker({
        //     callback: function(startDate, endDate, period){
        //         var start_date = startDate.format('YYYY-MM-DD');
        //         var end_date = endDate.format('YYYY-MM-DD');
        //         var title = start_date + ' To ' + end_date;
        //         $(this).val(title);
        //         $('input[name="start_date"]').val(start_date);
        //         $('input[name="end_date"]').val(end_date);
        //     }
        // });

    </script>
@endsection