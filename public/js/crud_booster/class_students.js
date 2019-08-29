$(document).ready(function () {

    // get data of all classes

    $.get('/school_bus/public/api/get_all_classes', function (data) {

        console.log('date of all classes :')
        console.log(data)

        data.forEach(function (school_class) {

            $('select[name=selected_class]').append("<option value='" + school_class.id + "'  >  " + school_class.name_english + "  </option>")

        })


    })

})
