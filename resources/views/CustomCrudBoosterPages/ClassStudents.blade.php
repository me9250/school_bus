@extends('crudbooster::admin_template')
@section('content')
@if(CRUDBooster::myPrivilegeId() == 1 || CRUDBooster::myPrivilegeId() == 2 )

<!-- Page Styles -->
<link rel="stylesheet" type="text/css" href="{{ asset('css/select2.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/buttons.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/print_bus_students.css') }}">

<!-- title -->

<div class="row">

    <div class='col-sm-4'>
        <h3> Class Students </h3>
    </div>

    <div class='col-sm-4'></div>

    <div class='col-sm-4'></div>

</div>

<!-- Drop down of list of buses -->

<div class="row">

    <div class='col-sm-4'></div>

    <div class='col-sm-4'>

        <div class="form-group">
            <label for="selected_class">Classes list:</label>
            <select class="form-control" name="selected_class">
                <option value='0'> Please select class </option>
            </select>


        </div>

    </div>

    <div class='col-sm-4'></div>

</div>


<!-- List of student related to selected bus -->

<div class="row">

    <div class="col-sm-12">

        <table name="class_students" border=1 class="display">
            <thead>
                <tr>
                    <th>ID Ref</th>
                    <th>Student Name Englihs</th>
                    <th>Student Name Arabic</th>
                    <th>House No</th>
                    <th>Road No</th>
                    <th>Block No</th>
                    <th>Father Mobile</th>
                    <th>Mother Mobile</th>
                    <th>Bus Number</th>
                    <th>Bus Area</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>

    </div>

</div>





<!-- Scripts -->
<script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>
<script src="{{ asset('js/select2.min.js') }}"></script>
<script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('js/buttons.print.min.js') }}"></script>
<script src="{{ asset('js/crud_booster/class_students.js') }}"></script>


<!-- User select 2 to search via list of buses and datatable -->
<script>
    // make select bus as select 2 component that user can serach via list easly 
 
    $('select[name=selected_class]').select2();

    // initiate datatable 

    var table = $('table[name=class_students]').DataTable({
        
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    });

    // on select bus number get all students related to it 

    $('select[name=selected_class]').on('select2:select', function (e) {

        $.get('/school_bus/public/api/get_class_students', {
            class_id: $('select[name=selected_class]').val()
        }, function (data) {


            console.log(data)

            // make table empty before load new data 

            table.clear()

            data.forEach(function (student) {

                table.row.add([student.class_name_english, student.student_name_english, student
                    .student_name_arabic, student.house_no, student.road_no, student
                    .block_no, student.father_mobile, student.mother_mobile, student
                    .bus_number, student.city_name
                ]);

            })

            table.draw()

        })

    })

</script>



@endif
@endsection
