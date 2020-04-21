function update(id) {
    console.log("sending rest Request");
            var jsonData = {
                'name': $('#name').val(),
                'price': $("#itemPrice").val(),
                'description': $("#itemDescription").val(),
                'quantity': $("#quantity").val(),
                'brand': $("#brand").val(),
                'height': $("#itemHeight").val(),
                'width': $("#itemWidth").val(),
                'offerType': $("#offer").val(),
                'discountPercentage': $('#discountOffer').val(),
                'priceOffer': $("#priceOffer").val(),
                'subCategoryId': $("#subCategory").val(),
                'itemBarcode': $('#itemBarcode').val(),
                'itemColour': $('#itemColour').val(),
                'bundleOfferX': $('#bundleOfferX').val(),
                'bundleOfferY': $('#bundleOfferY').val(),
                'startDate': $('#startDate').val(),
                'endDate': $('#endDate').val(),
                'dealId':$('#dealId').val()
            };
            console.log(jsonData);

            $.ajax({
                url: '/api/item/update/'+id,
                dataType: "json",
                type: 'PUT',
                data: JSON.stringify(jsonData),
                cache: false,
                headers: {
                    'sellerAuthToken': $.cookie('sellerAuthToken')
                },
                contentType: "text/plain",
                processData: false,
                success: updateItemResponse
            });
    }

    function updateItemResponse(response) {
        if(response.status ===200){
            alert("Item Updated");
            window.location.replace("/selleritems");
        }else if(response.status === 401){
            alert("Not authorized");
            window.location.replace("/sellerlogin");
        }
        console.log(response);
    }

    $('#sellerLogout').click(function () {
        $.removeCookie("sellerAuthToken",{path:'/'});
        window.location.replace("/");
    });
