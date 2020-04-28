//Employee
$.ajax({
    url: '/Admin/Employee/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#employee-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//About
$.ajax({
    url: '/Admin/About/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#about-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Producer
$.ajax({
    url: '/Admin/Producer/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#producer-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Category
$.ajax({
    url: '/Admin/Category/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#category-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Product
$.ajax({
    url: '/Admin/Product/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#product-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Post
$.ajax({
    url: '/Admin/Post/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#post-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Restaurant
$.ajax({
    url: '/Admin/Restaurant/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#restaurant-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });
//Video
$.ajax({
    url: '/Admin/Video/_Index',
    type: 'GET',
    dataType: 'html',
    data: {}
})
    .done(function (res) {
        $('#video-table').html(res);
    })
    .fail(function () {

    })
    .always(function () {
    });