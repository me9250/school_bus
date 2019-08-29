$(document).ready(function () {

    // get data of all bues

    $.get('/school_bus/public/api/get_all_buses', function (data) {

        console.log('date of all buses :')
        console.log(data)

        data.forEach(function (bus) {

            $('select[name=selected_bus]').append("<option value='" + bus.id + "'  >  " + bus.bus_number + "  </option>")

        })


    })








})
