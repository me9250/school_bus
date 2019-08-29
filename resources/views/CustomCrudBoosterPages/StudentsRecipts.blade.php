@extends('crudbooster::admin_template')
@section('content')
@if(CRUDBooster::myPrivilegeId() == 1 || CRUDBooster::myPrivilegeId() == 2 )
<link rel="stylesheet" type="text/css" href="{{ asset('css/print_recipt.css') }}">
<div class='student_recipt_form'>


    <!-- Row 1 - data of selected student -->


    <div class="row">

        <div class="col-sm-4">
            <h3> Student Information </h3>
        </div>

        <div class='col-sm-5'></div>

        <div class="col-sm-3 form-group ">
            <button style='display:none' type="hidden" class="btn btn-success" name='enable_edit_student_recipt'> Enable
                Edit Recipts </button>

        </div>

        <div class="col-sm-4">

            <div class="form-group">
                <label for="selected_student">Students list:</label>
                <select class="form-control" id="selected_student" name="selected_student">
                    <option value='0'> Please select student </option>
                </select>


            </div>

        </div>

        <div class="col-sm-8"></div>



    </div>

    <div class='row'>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_name_english'> Student Name English :</label>
                <input type='text' class='form-control' name='student_name_english' disabled>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_name_arabic'> Student Name Arabic :</label>
                <input type='text' class='form-control' name='student_name_arabic' disabled>
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

    <form>


        <div class='row'>

            <div class='col-sm-4'></div>
            <div class='col-sm-4'></div>
            <div class='col-sm-4'>

                <button class="btn btn-success" name='Save'> Save Changes </button>
                <button class="btn btn-primary" type='button' name='print_recipt' disabled data-toggle="modal"
                    data-target="#print_recipt" onclick="window.print()"> Print
                    Recipt </button>


            </div>

        </div>

        <div class='payments'>





        </div>


    </form>


</div>


<!-- Recipt will be printed -->

<div class='recipt' style='display:none;' >

    <div class="row">

    <div class="col-sm-4"></div>
        <div class="col-sm-4">

            <b> Jazoora Transportation </b>
            <br>
            <img width="200" height="200" src='http://www.freelogovectors.net/wp-content/uploads/2012/04/bus.png'>

        </div>
        <div class="col-sm-4"></div>

    </div>

    <div class="row">
        <div class='col-sm-4'>

            <b> Date : </b> <span class='date_of_recipt'> </span>

            <br>

            <b> Time : </b> <span class='time_of_recipt'> </span>

        </div>
        <div class='col-sm-4 recipt_company_logo'>

        </div>
        <div class='col-sm-4'>

            <b> Phone : </b> 17601233
            <br>
            <b> Email : </b> test@gmail.com


        </div>
    </div>

    <hr>


    <div class="row">

        <div class="col-sm-4">
            <b>
                <h4> Student Information </h4>
            </b>
        </div>

    </div>

    <div class='row'>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_name_english'> Student Name English :</label>
                <span class='student_name_english'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_name_arabic'> Student Name Arabic :</label>
                <span class='student_name_arabic'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_city_english'>City English:</label>
                <span class='student_city_english'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_city_arabic'>City Arabic:</label>
                <span class='student_city_arabic'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_flat_no'>Flat No. :</label>
                <span class='student_flat_no'> </span>
            </div>

        </div>
        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_house_no'>House No. :</label>
                <span class='student_house_no'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_road_no'>Road No. :</label>
                <span class='student_road_no'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_block_no'>Block No. :</label>
                <span class='student_block_no'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_father_mobile'>Father Mobile :</label>
                <span class='student_father_mobile'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_mother_mobile'>Mother Mobile :</label>
                <span class='student_mother_mobile'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_father_email'>Father Email :</label>
                <span class='student_father_email'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_mother_email'>Mother Email :</label>
                <span class='student_mother_email'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_class'>Class No :</label>
                <span class='student_class'> </span>
            </div>

        </div>

        <div class='col-sm-3'>

            <div class='form-group'>
                <label for='student_bus_no'>Bus No :</label>
                <span class='student_bus_no'> </span>
            </div>

        </div>


    </div>


    <div class="row">

        <div class="col-sm-12">
            <b>
                <h4> Payment Information <span class='recipt_study_year'> </span> </h4>
            </b>
        </div>


    </div>

    <div class='recipt_payments row'>

    </div>

    <div class='row'>

        <div class="col-sm-4"></div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4">

            <b> Total Fees : </b> <span class='recipt_total_fees'> </span>

        </div>

    </div>



</div>



<script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>


<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>

<script src="{{ asset('js/crud_booster/students_recipts.js') }}"></script>

<script>
    // make select student as select2 ajax 

    $("#selected_student").select2();

    // on select student 

    // get data of user based on name of student in arabic or english 

    $(' #selected_student').on('select2:select', function (e) {

        // make save student payment and print recipt disabled 
        $("button[name=Save] , button[name=print_recipt]").attr("disabled","disabled") 

        // make select studey year defualt option 

        $('#selected_study_year').val($('#selected_study_year option:first').val())



        $.get("/school_bus/public/api/get_student_data_using_his_name", {
            student_id: $("#selected_student").val(),
            year_id: $("#selected_study_year").val()
        }, function (data) {

            console.log("data from server :")
            console.log(data)

            $("input[name=student_mother_email]").val(null)

            // set data of student 

            console.log(data.student.length)

            if (data.student.length == 0) {

                // make current inputs empty 


                $("input[name^='student']").val(null);

                // disabled select study yaer 

                $("#selected_study_year").attr("disabled", "disabled");
                $("#selected_study_year").val($("#selected_study_year option:first").val());

                // disabled edit student info 

                $("button[name=edit_student_info]").attr("disabled", "disabled");

                // make payment section empty 

                $('.payments').empty();

                // make total fees filed empty 

                $('input[name=total_fees]').val(null);

            } else if (data.student.length == 1) {

                // enable select study yaer 

                $("#selected_study_year").removeAttr("disabled");


                // enable edit student info 

                $("button[name=edit_student_info]").removeAttr("disabled");

                // set data of student 

                data.student.forEach(function (student) {

                    // set data in form 

                    $("input[name=student_name_english]").val(student.student_name_english)
                    $("input[name=student_name_arabic]").val(student.student_name_arabic)
                    $("input[name=student_class]").val(student.class_name_english)
                    $("input[name=student_city]").val(student.city_name)
                    $("input[name=student_flat_no]").val(student.flat_no)
                    $("input[name=student_house_no]").val(student.house_no)
                    $("input[name=student_road_no]").val(student.road_no)
                    $("input[name=student_block_no]").val(student.block_no)
                    $("input[name=student_father_mobile]").val(student.father_mobile)
                    $("input[name=student_mother_mobile]").val(student.mother_mobile)
                    $("input[name=student_bus_no]").val(student.bus_number)
                    $("input[name=student_class]").val(student.class_name_english)
                    $("input[name=student_father_email]").val(student.father_email)
                    $("input[name=student_mother_email]").val(student.mother_email)

                    // set data in recipt 

                    // $("span[class^='student'").empty() 
                    $("span[class^='student']").empty()

                    $(".student_name_english").append(student.student_name_english)

                    $(".student_name_arabic").append(student.student_name_arabic)

                    $(".student_class").append(student.class_name_english)

                    $(".student_city_english").append(student.city_name_english)

                    $(".student_city_arabic").append(student.city_name_arabic)

                    $(".student_flat_no").append(student.flat_no)
                    $(".student_house_no").append(student.house_no)
                    $(".student_road_no").append(student.road_no)
                    $(".student_block_no").append(student.block_no)
                    $(".student_father_mobile").append(student.father_mobile)
                    $(".student_mother_mobile").append(student.mother_mobile)
                    $(".student_bus_no").append(student.bus_number)

                    $(".student_father_email").append(student.father_email)
                    $(".student_mother_email").append(student.mother_email)

                    // for print recipt 

                    localStorage.setItem("student_id", student.student_id)

                    // store data of student in local storage to use it later in print recipt 

                    localStorage.setItem("student_info", JSON.stringify(student))


                })




            }


        });
    });

</script>



@endif
@endsection
