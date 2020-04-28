function deleteClick(action, id) {
    swal({
        title: "Xóa dữ liệu?",
        text: "Dữ liệu xóa sẽ không thể khôi phục!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
        .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    url: action,
                    type: 'POST',
                    dataType: 'html',
                    data: { id: id },
                    beforeSend: function () {
                        $('.page-loader-wrapper').css('display', 'block');
                    }
                })
                    .done(function (res) {
                        toastr.success('Đã xóa dữ liệu!', 'Thông báo');
                        $('.show-table').html(res);
                    })
                    .fail(function () {

                    })
                    .always(function () {
                        $('.page-loader-wrapper').css('display', 'none');
                    });
            };
        });
}
//Delete in productDetails
function removeClick(action, productID, id) {
    swal({
        title: "Xóa dữ liệu?",
        text: "Dữ liệu xóa sẽ không thể khôi phục!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
        .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    url: action,
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id,
                        productID: productID
                    },
                    beforeSend: function () {
                        $('.page-loader-wrapper').css('display', 'block');
                    }
                })
                    .done(function (res) {
                        toastr.success('Đã xóa dữ liệu!', 'Thông báo');
                        $('.show-table').html(res);
                    })
                    .fail(function () {

                    })
                    .always(function () {
                        $('.page-loader-wrapper').css('display', 'none');
                    });
            };
        });
}