let chkEmployee;
let chkAbout;
let chkProducer;
let chkCategory;
let chkProduct;
let chkPost;
let chkRestaurant;
let chkVideo;

//check email & phone in Employee
$.ajax({
	url: '/Admin/Employee/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkEmployee = res;
	})
	.fail(function () {

	});
//Check name in About
$.ajax({
	url: '/Admin/About/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkAbout = res;
	})
	.fail(function () {

	});
//check name in Producer
$.ajax({
	url: '/Admin/Producer/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkProducer = res;
	})
	.fail(function () {

	});
//Check name in Category
$.ajax({
	url: '/Admin/Category/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkCategory = res;
	})
	.fail(function () {

	});
//Check name in Product
$.ajax({
	url: '/Admin/Product/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkProduct = res;
	})
	.fail(function () {

	});

//Check name in Post
$.ajax({
	url: '/Admin/Post/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkPost = res;
	})
	.fail(function () {

	});

//check name, email, phone in Restaurant
$.ajax({
	url: '/Admin/Restaurant/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkRestaurant = res;
	})
	.fail(function () {

	});

//check name in Video
$.ajax({
	url: '/Admin/Video/chkData',
	type: 'POST',
	dataType: 'json',
})
	.done(function (res) {
		chkVideo = res;
	})
	.fail(function () {

	});
