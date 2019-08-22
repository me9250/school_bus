$(document).ready(function () {



    // step 1 : get students name and id 
    /*

    $.get('/school_bus/public/api/get_all_students', function (data) {

        var students = new Array();

        students = data;

        console.log('array of students')
        console.log(students)

        console.log('list of students')

        // step 2 : set data of student in list in custom html created  

        students.forEach(function (student) {

            console.log(student)

            $('#selected_student').append('<option value=' + student.id + ' >' + student.name_english + ' / ' + student.name_arabic + '</option>');


        })

        // step 3 : get selected student information ( first student in the list )

        get_student_information();

        // step 4 : get study years

        get_study_years()



    })

    */



    // get years of study 

    get_study_years()


    // get data of user based on name of student in arabic or english 

    $(' input[name=student_name_english] , input[name=student_name_arabic] ').keyup(function () {



        $.get("/school_bus/public/api/get_student_data_using_his_name", {
            name: this.value ,
            year : $("#selected_study_year").val()
        }, function (data) {

            console.log("data from server :")
            console.log(data)

            // make current inputs empty 

            $("input[name=student_class]").val(null)
            $("input[name=student_city]").val(null)
            $("input[name=student_flat_no]").val(null)
            $("input[name=student_house_no]").val(null)
            $("input[name=student_road_no]").val(null)
            $("input[name=student_block_no]").val(null)
            $("input[name=student_father_mobile]").val(null)
            $("input[name=student_mother_mobile]").val(null)
            $("input[name=student_bus_no]").val(null) 
            $("input[name=student_father_email]").val(null)
            $("input[name=student_mother_email]").val(null)
            
            // set data of student 

            data.student.forEach(function (student) {

                $("input[name=student_class]").val(student.class_name_english)

                $("input[name=student_city]").val(student.city_name_english + ' / ' + student.city_name_arabic)
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

                localStorage.setItem("student_id", student.student_id) 
    

            })



        });
    });



    // step 5 : on change selected study year get student payment recipts based on year selected 

    $("#selected_study_year").change(function () {

        //get_student_payment_recipts_in_selected_year()

    })


    // on click edit student info open edit student page based on student selected 

    $("button[name='edit_student_info']").click(function () {

        window.location.href = "admin/student30/edit/" + localStorage.getItem("student_id") + "?return_url=http%3A%2F%2Flocalhost%2Fschool_bus%2Fpublic%2Fadmin%2Fstudent30&parent_id=&parent_field=" ;
 
    })



});


function get_study_years() {
    $.get("/school_bus/public/api/get_study_years", {}, function (data, status) {

        $('#selected_study_year').empty()

        var current_date = new Date();

        data.forEach(function (year) {

            if (year.name.includes(current_date.getFullYear())) {
                $('#selected_study_year').append('<option selected value=' + year.id + ' >' + year.name + '</option>');
            } else {
                $('#selected_study_year').append('<option value=' + year.id + ' >' + year.name + '</option>');
            }


        })

    });
}





function get_student_payment_recipts_in_selected_year() {

    $.get("/school_bus/public/api/get_student_payment_recipt_in_specific_year", {
        student_id: localStorage.getItem("student_id") , 
        year_id : $("#selected_study_year").val() 
    }, function (data, status) {

        console.log('payment data : ')
        console.log(data)

        if (data.length == 0) {
            swal('There is no recipts for this year')
        } else {

        }



    });
}
