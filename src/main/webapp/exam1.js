//$(document).ready(function() {
    /*$("#enterItemId").submit(function (event) {
        event.preventDefault();
        var id = document.getElementById("itemId").value;
        console.log(id);
        $.ajax({
            url:'/api/item/'+id,
            type:'GET',
            cache: false,
            headers:{
                'authToken':$.cookie('authToken')
            },
            contentType: "text/plain",
            processData: false,
            success: findItemResponse
        });
    });*/

    /*function findItemResponse(response) {
        if(response.status === 200){
            alert("Item found");
            //$('#answer').text(JSON.stringify(response));
            $('#answer').append('<img id = "prodImage" width="150"  src="'+response.item.url+'" height="150" class = "img-responsive" alt="ItemName">');
        }else if(response.status === 500){
            alert("Item not found");
        }
        console.log(response);
    }
});

$(document).ready(function() {
    $("#enterItemId").submit(function (event) {
        //event.preventDefault();
        var formData={
            'emailId': $('#itemId').val()
        }
        console.log(formData);
        $.ajax({
            url:'/api/item/exam1',
            type:'POST',
            data: JSON.stringify(formData),
            //cache: false,
            dataType:"json",
            contentType: "text/plain",
            //processData: false,
            success: findItemResponse
        });
    });


    console.log(findItemResponse());
    function findItemResponse(response) {
        if(response.status === 200){
            alert("Item found");
            console.log(response);
            $('#answer').text(JSON.stringify(response));
            for (var i = 0; i < response.item.length; i++) {
                console.log("hi");
                //$('#answer').append('<div class="col-md-1">' + response.item[i].itemBarcode+ '</div>');
                //$('#answer').append('<img id = "prodImage" width="150"  src="' + response.item[i].url + '" height="150" class = "img-responsive" alt="ItemName">');
                $('#answer').append('<div class="col-md-1">' + response.item[i].name+ '</div>');
                //$('#answer').append('<div class="col-md-1">' + response.item[i].itemQtySold+ '</div>');
                $('#answer').append('<br>');
            }
        }else if(response.status === 500){
            alert("Item not found");
        }
        console.log(response);
    }
});
*/

$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();



    var theTemplateScript = $("#example-template").html();
    theTemplate = Handlebars.compile(theTemplateScript);


        $.ajax({
            type: 'GET',
            url: "/api/item/exam1",
            success: showItemResponse
        });

});

function displayItems() {
    var compiledHtml = theTemplate(displayData);
    $('#items').html(compiledHtml);
    displayRating();
}

function showItemResponse(data) {
    console.log(data);
    //For Deep Copy to avoid problems with references
    initData = JSON.parse(JSON.stringify(data));
    displayData = data;
    displayItems();
}

function showItems() {
    var email = $('#itemId').val();
    var data = {
        'emailId' : email,
        'data': displayData
    };
    console.log(data);

    $.ajax({
        url:'/api/item/exam1',
        type:'POST',
        data: JSON.stringify(data),
        cache: false,
        contentType: "text/plain",
        processData: false,
        success: function (data) {
            displayData = data;
            displayItems();
        }
    });
}

