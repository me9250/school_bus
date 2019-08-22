@extends('crudbooster::admin_template')
@section('content')


<!-- Row 1 - data of selected student -->

<div class="row">

    <div class="col-sm-4">
        <h3> Student Information </h3>
    </div>

    <div class='col-sm-5'></div>

    <div class="col-sm-3 form-group ">
        <button type="button" class="btn btn-success" name='edit_student_info'> Edit Student Info </button>
    </div>

</div>

<div class='row'>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_name_english'> Student Name English :</label>
            <input type='text' class='form-control' name='student_name_english'>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_name_arabic'> Student Name Arabic :</label>
            <input type='text' class='form-control' name='student_name_arabic'>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_city'>City :</label>
            <input type='text' class='form-control' name='student_city' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_flat_no'>Flat No. :</label>
            <input type='text' class='form-control' name='student_flat_no' disabled>
        </div>

    </div>
    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_house_no'>House No. :</label>
            <input type='text' class='form-control' name='student_house_no' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_road_no'>Road No. :</label>
            <input type='text' class='form-control' name='student_road_no' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_block_no'>Block No. :</label>
            <input type='text' class='form-control' name='student_block_no' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_father_mobile'>Father Mobile :</label>
            <input type='text' class='form-control' name='student_father_mobile' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_mother_mobile'>Mother Mobile :</label>
            <input type='text' class='form-control' name='student_mother_mobile' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_father_email'>Father Email :</label>
            <input type='text' class='form-control' name='student_father_email' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_mother_email'>Mother Email :</label>
            <input type='text' class='form-control' name='student_mother_email' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_class'>Class No :</label>
            <input type='text' class='form-control' name='student_class' disabled>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='student_bus_no'>Bus No :</label>
            <input type='text' class='form-control' name='student_bus_no' disabled>
        </div>

    </div>


</div>


<!-- Row 2 - list of years -->

<div class='row'>


    <div class="col-sm-12">
        <h3> Payments </h3>
    </div>

    <div class='col-sm-4'>

        <div class='form-group'>
            <label for='selected_year'>Year :</label>
            <select class='form-control' id='selected_study_year' name='selected_study_year'>
            </select>
        </div>

    </div>

    <div class='col-sm-5'></div>

    <div class="col-sm-3 form-group">
        <label for='total_fess'> Total Fess </label>
        <input type="text" name='total_fees' disabled>
    </div>

</div>


<!-- Row 3 - monthly payments details -->

<div class='row'>

    <!-- September -->

    <div class='col-sm-12'> <b> September </b> </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='september_fess'>Fees :</label>
            <input type='text' class='form-control' name='september_fess'>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='september_recipt_number'>Recipt No :</label>
            <input type='text' class='form-control' name='september_recipt_number'>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='september_recipt_date'>Recipt Date :</label>
            <input type='text' class='form-control' name='september_recipt_date'>
        </div>

    </div>

    <div class='col-sm-3'>

        <div class='form-group'>
            <label for='september_payment_status'>Payment Status :</label>
            <select class='form-control' id='september_payment_status' name='september_payment_status'>
                <option value='Paid'> Paid </option>
                <option value='Paid'> Paid </option>
                <option value='Unpaid'> Unpaid </option>
            </select>
        </div>

    </div>



</div>



<script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>
<script src="{{ asset('js/crud_booster/students_recipts.js') }}"></script>

@endsection
