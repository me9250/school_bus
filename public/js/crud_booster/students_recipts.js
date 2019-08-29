$(document).ready(function () {


    



    // make all fields that name start with word 'student' 

    $("input").val(null);

    // only can write numbers in fileds with type number 

    //$("input[type='number']").numeric();

    $.get('/school_bus/public/api/get_all_students', function (data) {

        var students = new Array();

        students = data;

        console.log('array of students')
        console.log(students)

        console.log('list of students')

        // set data of student in list in custom html created  

        students.forEach(function (student) {

            console.log(student)

            $('#selected_student').append('<option value=' + student.id + ' >' + student.name_english + " : "  + student.name_arabic + '</option>');


        })

    })



    // get years of study 

    get_study_years()

    // make edit student info button disabled ( enabled only when user select student )

    $("button[name='Save']").attr('disabled', 'disabled')


    //  on change selected study year get student payment recipts based on year selected 

    $("#selected_study_year , #selected_student").change(function () {

        if($("#selected_study_year").val() >  0)
        {
            $("button[name=Save]").removeAttr("disabled") 
            $("button[name=print_recipt]").removeAttr("disabled") 
            generate_student_payments()
        }
        else
        {
            $("button[name=Save]").attr("disabled","disabled" ) 
            $("button[name=print_recipt]").attr("disabled","disabled" ) 
            $('.payments').empty()
        }
        

    })


    $("form").submit(function(event){

        event.preventDefault();

        console.log('data will send to the server')
        console.log($(this).serializeArray())

        $.post( "/school_bus/public/api/update_month_payment", { student_id : $('#selected_student').val() , year_id : $("#selected_study_year").val() ,  months_payments : $(this).serializeArray() } , function( data ) {

            console.log('result of update months payments')
            console.log(data)
            //swal(data.msg)
            generate_student_payments()
             
          });
 



      }); 

    // on click edit student info open edit student page based on student selected 

    $("button[name='edit_student_info']").click(function () {

        window.location.href = "admin/student30/edit/" + localStorage.getItem("student_id") + "?return_url=http%3A%2F%2Flocalhost%2Fschool_bus%2Fpublic%2Fadmin%2Fstudent30&parent_id=&parent_field=";

    })

    // on change fees fields recalculate the total fees 

    $("[name$='_fees']").change(function()
    {

    })

    // on click button of enable and disable edit recipt enable and disable edit fees and delete recipts 

    $(" button[name='enable_edit_student_recipt'] , button[name='disable_edit_student_recipt'] ").click(function(){
      

        if( this.name == "enable_edit_student_recipt" )
        {
            $("[name$='_fees']").removeAttr('disabled') 
            $(".btn-danger").removeAttr('disabled') 
            $(this).attr("name","disable_edit_student_recipt")
            $(this).attr("class","btn btn-danger")
        }
        else if( this.name == "disable_edit_student_recipt" )
        {
            $("[name$='_fees']").attr('disabled','disabled') 
            $(".btn-danger").attr('disabled','disabled')
            $(this).attr("name","enable_edit_student_recipt")
            $(this).attr("class","btn btn-success")
            $("button[name=enable_edit_student_recipt]").removeAttr('disabled')
        }

    })




});




function get_study_years() {
    $.get("/school_bus/public/api/get_study_years", {}, function (data, status) {

        $('#selected_study_year').empty()
        $('#selected_study_year').append('<option selected > Please select year : </option>');

        // make select year disabled and enable it only when user select student 

        $("#selected_study_year").attr('disabled', 'disabled');


        var current_date = new Date();

        data.forEach(function (year) {

            if (year.name.includes(current_date.getFullYear())) {
                $('#selected_study_year').append('<option value=' + year.id + ' >' + year.name + '</option>');
            } else {
                $('#selected_study_year').append('<option value=' + year.id + ' >' + year.name + '</option>');
            }


        })

    });
}


function generate_student_payments()
{

 
    console.log($('#selected_study_year').val())

    $.get("/school_bus/public/api/get_student_payment_recipt_in_specific_year", {
        student_id: $("#selected_student").val(),
        year_id: $("#selected_study_year").val()
    }, function (data, status) {

        console.log('payment data : ')
        console.log(data)

        console.log('lenght of array of student payments')
        console.log(data.student_payments.length)


        //if (data.student_payments.length >= 0 ) {

            var student_payments = new Array() ; 

            var total_fees = 0 ; 

            data.school_months.forEach(function (month) {

                var isExist = data.student_payments.some(function (payment) {
                    return payment.month_id === month.id
                });

                console.log(month.name_english)
                console.log(isExist);


                if (isExist) {

                    console.log ( data.student_payments.filter(payment => payment.month_id === month.id ) ) ;

                    //var date = data.student_payments.filter(payment => payment.month_id === month.id ) 

                    var result = data.student_payments.find(payment => {

                        if ( payment.month_id === month.id ) 
                        {
                           return payment ;
                        }

                      })

                    student_payments.push(result)    
                    
                    total_fees += parseFloat(result.month_fees) ; 
                   
                } else {

                    var payment = { id : 0  , month_fees : 0 , month_id : month.id , month_payment_status : 0 , month_payment_recipt_no : "" , month_recipt_date : "" , student_id : $("#selected_student").val() , year_id : $("#selected_study_year").val() , month_name_english : month.name_english , month_name_arabic : month.name_arabic } ;

                    student_payments.push(payment)    
                }

       


                

            })

            console.log('payments will show for user after parseing payment of student ')
            console.log( student_payments )

            // make div of payment empty

            $('.payments').empty()

            // make recipt empty 

            $('.recipt_payments').empty()

            // store student payments to use it later in print recipt 

            localStorage.setItem("student_payments" , JSON.stringify(student_payments) )

            // create row of months payments 

            student_payments.forEach(function(payment){

                // generate payment form

                $('.payments').append("<form>");
                                  
                $('.payments').append("<div class='row'>");

                $('.payments').append("<div class='col-sm-12'> <h5> <b> " + payment.month_name_english + " </b> </h5> </div>");
                
                $('.payments').append("<div class='col-sm-3'><div class='form-group'><label for='"+ payment.month_name_english + "'>Fees :</label><input type='number' min='0' class='form-control' name='"+ payment.month_id + "'  value='"+ payment.month_fees + "'   ></div></div>");

                /*
                if( payment.month_payment_status == 1 )
                {
                    $('.payments').append("<div class='col-sm-3'> <div class='form-group'><label for='september_payment_status'>Payment Status :</label> <select class='form-control' id='"+ payment.month_name_english + "_payment_status' name='"+ payment.month_name_english + "_payment_status' ><option value='1' selected > Paid </option><option value='0'> Unpaid </option></select></div></div>");
                }
                else if( payment.month_payment_status == 0 )
                {
                    $('.payments').append("<div class='col-sm-3'> <div class='form-group'><label for='september_payment_status'>Payment Status :</label> <select class='form-control' id='"+ payment.month_name_english + "_payment_status' name='"+ payment.month_name_english + "_payment_status' ><option  value='1' > Paid </option><option value='0' selected > Unpaid </option></select></div></div>");
                }
                */

                $('.payments').append("<div class='col-sm-3'><div class='form-group'><label for='"+ payment.month_name_english + "_recipt_date' >Recipt Date :</label><input type='text' disabled class='form-control' name='"+ payment.month_name_english + "_recipt_date'  value='"+ payment.month_recipt_date + "'  > </div></div>");

              
                $('.payments').append("<div class='col-sm-3'>  <br> <button  class='btn btn-danger' id='" + payment.id + " ' onclick='delete_month_payment(this.id)'  > Delete </button> </div>");

                $('.payments').append("</div>");

                $('.payments').append("</form>");




                // generate payment recipts 

               // $('.recipt_payments').append("<div class='row'>");

               var color = payment.month_fees > 0 ? 'paid' : 'unpaid' ;  

 
                $('.recipt_payments').append("<div class='col-sm-3'><div class='form-group'><label for='"+ payment.month_name_english + "'>  " + payment.month_name_english + "   :</label><span class='" + color + "' > " + payment.month_fees  + " BHD  </span></div></div>");

               // $('.recipt_payments').append("</div>");




            })

            
            var today = new Date();
            var date = new Date().toJSON().slice(0,10).replace(/-/g,'/');
            var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

            $(".date_of_recipt").empty()

            $(".time_of_recipt").empty()  


            $(".date_of_recipt").append( new Date().toDateString() )   

            $(".time_of_recipt").append( time )    
            
            $('.payments').append("<div class='row'>");
            $('.payments').append("</div>");

            $('.recipt_total_fees').append("<div class='row'>");

            $('.recipt_total').append("</div>");

            $('.recipt_payments').append("<div class='row'>");
            $('.recipt_payments').append("</div>");

            $(".recipt_study_year").empty()
            $(".recipt_study_year").append( "( In Year " + $('#selected_study_year option:selected').text() + " ) " )  

            console.log('total fees : ')
            total_fees = total_fees.toFixed(3) + ' BHD' ;  
            console.log(total_fees) 
            // set total fess
            $('input[name=total_fees]').val(total_fees)

            // total fees of recipt 
            $('.recipt_total_fees').empty()
            $('.recipt_total_fees').append( total_fees )


        /*
        } else if (data.student_payments.length == 0) {
            swal('There is not recipts related to selecte student in this year')
            $("#selected_study_year").val($("#selected_study_year option:first").val());
            $('input[name=total_fees]').val(null)
            $('.payments').empty()
        }
        */

    });

}


function delete_month_payment(id)
{

    if(id == 0 )
    {
        swal("This month recipt already empty.")
    }
    else if( id > 0  )
    {
    
        swal({
            title: "Are you sure?",
            text: "You will not be able to recover this imaginary file!",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-danger",
            confirmButtonText: "Delete",
            cancelButtonText: "Cancel",
            closeOnConfirm: false,
            closeOnCancel: false
          },
          function(isConfirm) {
            if (isConfirm) {

                $.post( "/school_bus/public/api/delete_month_payment", { id : id } , function( data ) {

                    console.log('result of delete month payment')
                    console.log(data)
                    swal(data.msg)
                    generate_student_payments()
                     
                  });

             // swal("Deleted!", "Your imaginary file has been deleted.", "success");
            } else {
              swal("Cancelled", "Your imaginary file is safe :)", "error");
            }
          });

    }



      
}

// generate recipt 

function generate_student_recipt()
{ 
    console.table(localStorage)

    // make view empty from information 

    $("span[class^='recipt']" ).empty() 
 
    // parse student info 

    var student_info = JSON.parse(localStorage.getItem("student_info")) ;
    
    // parse students payments in selcted year 

    var student_payments = JSON.parse(localStorage.getItem("student_payments")) ;

    // set data of student in recipt 

    $('.recipt_student_name').append( student_info.student_name_english + ' / ' + student_info.student_name_arabic  )
    $('.recipt_student_city').append( student_info.city_name_english + ' / ' + student_info.city_name_arabic  )
    $('.recipt_student_flat_no').append( student_info.flat_no  )
    $('.recipt_student_house_no').append( student_info.house_no )
    $('.recipt_student_road_no').append( student_info.road_no )
    $('.recipt_student_block_no').append( student_info.block_no  )

}

// print recipt 

function printRecipt()
{
   var divToPrint= document.getElementById("recipt");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}
