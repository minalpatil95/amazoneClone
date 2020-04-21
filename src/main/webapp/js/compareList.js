function removeFromList(wishListItemId) {
    $.ajax({
        type:'DELETE',
        headers:{
            'authToken':$.cookie('authToken')
        },
        url:'api/item/compare/'+wishListItemId,
        success:function (resp) {
            alert(JSON.stringify(resp));
            window.location.reload();
        }
    })
}