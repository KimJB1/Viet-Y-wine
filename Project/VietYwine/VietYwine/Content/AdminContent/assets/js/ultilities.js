//Sự kiện chọn ảnh
function selectFile() {
    var finder = new CKFinder();
    finder.selectActionFunction = function (url) {
        $('#avatar').val(url);
		$('#show-ava').attr('src', url);
		$('#show-img').attr('src', url);
    };
    finder.popup();
}
//Dẫn đến các partial view Create, Details, Edit
function btnClick(action, id) {
	if (id == null) {
		$.ajax({
			url: action,
			type: 'GET',
			dataType: 'html',
			data: {},
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	}
	else {
		$.ajax({
			url: action,
			type: 'GET',
			dataType: 'html',
			data: { id: id },
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
// Đổi view của modal Create, Details, Edit
function btnModal(action, id) {
	if (id == null) {
		$.ajax({
			url: action,
			type: 'GET',
			dataType: 'html',
			data: {},
		})
			.done(function (res) {
				$('.modal-content').html(res);
			})
			.fail(function () {

			})
			.always(function () {
			});
	}
	else {
		$.ajax({
			url: action,
			type: 'GET',
			dataType: 'html',
			data: { id: id },
		})
			.done(function (res) {
				$('.modal-content').html(res);
			})
			.fail(function () {

			})
			.always(function () {

			});
	}
}
//Chuyển từ name sang slug khi input thay đổi
function nameChange() {
	let str = document.getElementById('name-change').value;
	str = str.toLowerCase();
	str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
	str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
	str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
	str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
	str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
	str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
	str = str.replace(/đ/g, "d");
	str = str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'|\"|\&|\#|\[|\]|~|\$|_|`| |{|}|\||\\/g, "-");
	str = str.replace(/ + /g, " ");
	str = str.trim();
	document.getElementById('slug-name').value = str;
}
//Dẫn đến các paritalview create, details, edit có productID
function selectView(action, productID, id) {
	if (id == null) {
		$.ajax({
			url: action,
			type: 'GET',
			dataType: 'html',
			data: { productID: productID },
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	}
	else {
		$.ajax({
			url: action,
			type: 'GET',
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
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	}
}
//Hiển thị video khi textarea video thay đổi
function iframeVideo() {
	let video = $('textarea#video').val();
	$('div#show-video').html(video);
}