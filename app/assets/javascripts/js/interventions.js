
$("#intervention_customer_id").hide()
$("#intervention_building_id").hide()
$("#intervention_batterie_id").hide()
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

      $(data).each(function () {
        var current_building = this;
        $("#intervention_building_id").append($('<option>').text(current_building.fullNameAdministrator).val(current_building.id));
      });
    }
  });

})

$("#intervention_building_id").change(function (e) {
  console.log(this.value)
  $("#intervention_batterie_id").show()
  var value = this.value

  $.ajax({
    dataType: "json",
    cache: false,
    url: "/get_batteries/" + value,
    timeout: 5000,
    error: (XMLHttpRequest, errorTextStatus, error) => {
      alert("Failed to submit:" + errorTextStatus + error);
    },

    success: (data) => {
      console.log(data)

      $(data).each(function () {
        var current_battery = this;
        $("#intervention_batterie_id").append($('<option>').text(current_battery.buildingId).val(current_battery.id));
      });
    }
  });
})

$("#intervention_batterie_id").change(function (e) {
  console.log(this.value)
  $("#intervention_column_id").show()
  var value = this.value

  $.ajax({
    dataType: "json",
    cache: false,
    url: "/get_columns/" + value,
    timeout: 5000,
    error: (XMLHttpRequest, errorTextStatus, error) => {
      alert("Failed to submit:" + errorTextStatus + error);
    },

    success: (data) => {
      console.log(data)

      $(data).each(function () {
        var current_column = this;
        $("#intervention_column_id").append($('<option>').text(current_column.batteryId).val(current_column.id));
      });
    }
  });
})

$("#intervention_column_id").change(function (e) {
  console.log(this.value)
  $("#intervention_elevator_id").show()
  var value = this.value

  $.ajax({
    dataType: "json",
    cache: false,
    url: "/get_elevators/" + value,
    timeout: 5000,
    error: (XMLHttpRequest, errorTextStatus, error) => {
      alert("Failed to submit:" + errorTextStatus + error);
    },

    success: (data) => {
      console.log(data)

      $(data).each(function () {
        var current_elevator = this;
        $("#intervention_elevator_id").append($('<option>').text(current_elevator.columnId).val(current_elevator.id));
      });
    }
  });
})

