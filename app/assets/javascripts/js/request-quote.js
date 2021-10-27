// Variables
var numApartments = 0;
var numFloorsRes = 0;
var numFloorsHyb = 0;
var numBasements = 0;
var numShafts = 0;
var numElevators = 0;
var showElevators = 0;
var numColumns = 0;
var numOccupants = 0;
var totalNumberOccupants = 0;
var elevatorsPrice = 0;
var installationFees = 0;
var radioValue = 0;

// Begin
$(document).ready(function () {
    $(".form-group").hide();
    $(".form-group-2").hide();
});

// Select button options
$(".type-answer").change(function () {

    if ($('#res').prop('checked')) {
        commom();
        $("#numApartments").show();
        $("#numFloorsRes").show();
        $(".form-group-2").show();
        calcRes();
    }
    else if ($('#comm').prop('checked')) {
        commom();
        $("#numBusinesses").show();
        $("#numParking").show();
        $("#numCages").show();
        $("#numFloorsRes").show();
        $(".form-group-2").show();
        calcCom();
    }
    else if ($('#corp').prop('checked')) {
        commom();
        $("#numCompanies").show();
        $("#numParking").show();
        $("#numOccupants").show();
        $("#numFloorsHyb").show();
        $(".form-group-2").show();
        calcCorpHybr();
    }
    else if ($('#hyb').prop('checked')) {
        commom();
        $("#numBusinesses").show();
        $("#numParking").show();
        $("#numOccupants").show();
        $("#numHours").show();
        $("#numFloorsHyb").show();
        $(".form-group-2").show();
        calcCorpHybr();
    }
});


//Getting product line velue checked 
$('.radio').on('change keyup', 'input', function () {
    radioValue = $(this).attr('value')
    // alert(radioValue);
    calcPrice();
})

// Functions
var cleanValues = function () {
    $("#form-group").each(function () {
        this.reset();
    });
    numShafts = 0;
    numColumns = 0;
    numElevators = 0;
    showElevators = 0;
    totalValue = 0;
    installationFees = 0;
    elevatorsPrice = 0;
}

var commom = function () {
    $("#fields")[0].reset();
    $(".form-group").hide();
    $("#numBasements").show();
    cleanValues();
    showResults();
}

var clear = function () {
    $(".type-answer")[0].reset();
    $("#fields")[0].reset();
    cleanValues();
    showResults();
}

var calcRes = function () {
    $("#fields").change(function () {
        event.preventDefault();
        numApartments = $("#input_apartments").val();
        numFloorsRes = $("#input_floorsRes").val();
        numShafts = Math.ceil((numApartments / numFloorsRes) / 6);
        numColumns = Math.ceil(numFloorsRes / 20);
        numElevators = numShafts * numColumns;
        showResults();
    });
};

var calcCom = function () {
    $("#fields").change(function () {
        event.preventDefault();
        numFloorsRes = $("#input_floorsRes").val();
        numElevators = $("#input_cages").val();
        numColumns = Math.ceil(numFloorsRes / 20);
        showResults();
    });
};

var calcCorpHybr = function () {
    $("#fields").change(function () {
        event.preventDefault();
        numFloorsHyb = $("#input_floorsHyb").val();
        numOccupants = $("#input_occupants").val();
        totalNumberOccupants = numOccupants * numFloorsHyb;
        numColumns = Math.ceil(numFloorsHyb / 20);
        numShafts = Math.ceil(totalNumberOccupants / 1000);
        var numCages = Math.ceil(numShafts / numColumns);
        numElevators = numCages * numColumns;
        showResults();
    });
};

var showResults = function () {
    if (isNaN(numElevators)) {
        numElevators = 0;
    }
    if (isNaN(numColumns)) {
        numColumns = 0;
    }
    $("#showColumns").text("Number of columns = " + numColumns);
    $("#showElevators").text("Number of shafts = " + numElevators);
    $("#qtdElevators").text("Number of Elevators needed = " + numElevators);
    if (radioValue === "1" || radioValue === "2" || radioValue === "3") {
        calcPrice();
    }
}

var calcPrice = function () {
    if (radioValue === "1") {
        elevatorsPrice = numElevators * 7565;
        installationFees = elevatorsPrice * 0.10;
    }
    if (radioValue === "2") {
        elevatorsPrice = numElevators * 12345;
        installationFees = elevatorsPrice * 0.13;
    }
    if (radioValue === "3") {
        elevatorsPrice = numElevators * 15400;
        installationFees = elevatorsPrice * 0.16;
    }
    showPrice();
}

var showPrice = function () {
    var totalValue = elevatorsPrice + installationFees;
    $("#showPrices").text("Elevators price =  " + new Intl.NumberFormat('en-CA', { style: 'currency', currency: 'CAD' }).format(elevatorsPrice));
    $("#showFees").text("Installation fees =  " + new Intl.NumberFormat('en-CA', { style: 'currency', currency: 'CAD' }).format(installationFees));
    $("#showTotal").text("Total value = " + new Intl.NumberFormat('en-CA', { style: 'currency', currency: 'CAD' }).format(totalValue));
}

//Clear button
$('#reset').click(function () {
    clear();
});


