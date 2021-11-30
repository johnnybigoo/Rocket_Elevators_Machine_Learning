
$("#intervention_customer_id").hide()
$("#intervention_building_id").hide()
$("#intervention_battery_id").hide()
$("#intervention_column_id").hide()
$("#intervention_elevator_id").hide()

$("#intervention_employee_id").change(function (e) {
  $("#intervention_customer_id").show()
})

$("#intervention_customer_id").change(function (e) {
  console.log(this.value)
  $("#intervention_building_id").show()
  var value = this.value

  $.ajax({
    dataType: "json",
    cache: false,
    url: "/get_buildings/" + value,
    timeout: 5000,
    error: (XMLHttpRequest, errorTextStatus, error) => {
      alert("Failed to submit:" + errorTextStatus + error);
    },
    success: (data) => {
      console.log(data)
    }
  });
})

