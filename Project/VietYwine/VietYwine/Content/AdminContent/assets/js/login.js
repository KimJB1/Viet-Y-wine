// Button login system
$('.login-system').off('click').click(function () {
    let email = $(this).parent().siblings('input#email').val();
    let pass = $(this).parent().siblings('input#passWord').val();
    $.ajax({
        url: '/Admin/SystemManagement/Login',
        type: 'POST',
        dataType: 'json',
        data: {
            email: email,
            passWord: pass
        },
        beforeSend: function () {
            $('.page-loader-wrapper').css('display', 'block');
        }
    })
        .done(function (res) {
            if (res.statusCode != 200) {
                toastr.error(res.Message, 'Thông báo');
            }
            else {
                toastr.success(res.Message, 'Thông báo');
                window.location.href = '/trang-chu-quan-tri';
            }
        })
        .fail(function () {

        })
        .always(function () {
            $('.page-loader-wrapper').css('display', 'none');
        });
});