//Employee
function createEmployee() {
	let lastName = $('input#lastName').val();
	let firstName = $('input#firstName').val();
	let birthday = $('input#birthday').val();
	let gender = '';
	let genderEls = document.getElementsByName('gender');
	for (index in genderEls) {
		if (genderEls[index].checked) {
			gender = genderEls[index].value;
		}
	}
	let email = $('input#email').val();
	let phone = $('input#phone').val();
	let address = $('input#address').val();
	let spAdmin = '';
	let spAdminEls = document.getElementsByName('supperAdmin');
	for (index in spAdminEls) {
		if (spAdminEls[index].checked) {
			spAdmin = spAdminEls[index].value;
		}
	}
	let passWord = $('input#passWord').val();
	let avatar = $('input#avatar').val();
	let hobbies = $('textarea#hobbies').val();
	let description = $('textarea#description').val();
	//Validate
	let err = [];
	if (!lastName) {
		err.push('Họ đệm không được để trống!');
	}
	else if (lastName.length > 70) {
		err.push('Họ đệm quá dài!');
	};
	if (!firstName) {
		err.push('Tên không được để trống!');
	}
	else if (firstName.length > 30) {
		err.push('Tên quá dài!');
	};
	if (!birthday) {
		err.push('Ngày sinh không được để trống!');
	};
	if (!email) {
		err.push('Email không được để trống!');
	}
	else if (email.length > 200) {
		err.push('Email quá dài!');
	}
	else {
		let regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (!regex.test(email)) {
			err.push('Email không đúng định dạng!');
		};
	}
	//Check trùng mail
	let checkEmail = chkEmployee.find(x => x.email == email);
	if (checkEmail != undefined) {
		err.push('Email đã tồn tại!');
	};
	if (!phone) {
		err.push('Số điện thoại không được để trống!');
	}
	else if (isNaN(phone)) {
		err.push('Số điện thoại phải là số!');
	}
	else if (phone.length > 11) {
		err.push('Số điện thoại quá dài!');
	};
	//Check trùng sđt
	let checkPhone = chkEmployee.find(x => x.phone == phone);
	if (checkPhone != undefined) {
		err.push('Số điện thoại đã tồn tại!');
	};
	if (!address) {
		err.push('Địa chỉ không được để trống!');
	}
	else if (address.length > 200) {
		err.push('Địa chỉ quá dài!');
	};
	if (!passWord) {
		err.push('Mật khẩu không được để trống!');
	}
	else if (passWord.length < 8) {
		err.push('Mật khẩu tối thiểu là 8 ký tự!');
	}
	else if (passWord.length > 200) {
		err.push('Mật khẩu quá dài!');
	};
	if (hobbies.length > 2000) {
		err.push('Sở thích quá dài!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	}
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Employee/Create',
			type: 'POST',
			dataType: 'html',
			data: {
				lastName: lastName,
				firstName: firstName,
				birthday: birthday,
				gender: gender,
				email: email,
				phone: phone,
				address: address,
				isSupperAdmin: spAdmin,
				passWord: passWord,
				avatar: avatar,
				hobbies: hobbies,
				description: description
			},
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				toastr.success('Đăng ký thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	}
}
//About
function createAbout() {
	let name = $('input#about-name').val();
	let description = CKEDITOR.instances['description'].getData();
	let err = [];
	if (!name) {
		err.push('Tên tiêu đề không được để trống!');
	}
	else if (name.length > 500) {
		err.push('Tên tiêu đề quá dài!');
	}
	else {
		let result = chkAbout.find(x => x.name.toLowerCase() == name.toLowerCase());
		if (result != undefined) {
			err.push('Tên tiêu đề đã tồn tại!');
		};
	};
	if (!description) {
		err.push('Nội dung không được để trống!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/About/Create',
			type: 'POST',
			contentType: 'application/json',
			dataType: 'html',
			data: JSON.stringify({
				name: name,
				description: description
			}),
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				toastr.success('Đăng bài thành công!', 'Thông báo!');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	}
}
//Producer
function createProducer() {
	let avatar = $('input#avatar').val();
	let name = $('input#producer-name').val();
	let address = $('input#address').val();
	let email = $('input#email').val();
	let website = $('textarea#website').val();
	let phone = $('input#phone').val();
	let regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	let err = [];
	if (!name) {
		err.push('Tên công ty đối tác không được để trống!');
	}
	else if (name.length > 300) {
		err.push('Tên công ty đối tác quá dài!');
	}
	else {
		let result = chkProducer.find(x => x.name.toLowerCase() == name.toLowerCase());
		if (result != undefined) {
			err.push('Tên công ty đối tác đã tồn tại!');
		}
	};
	if (!address) {
		err.push('Địa chỉ không được để trống!');
	}
	else if (address.length > 200) {
		err.push('Địa chỉ quá dài');
	};
	if (!email) {
		err.push('Email không được để trống!');
	}
	else if (!regex.test(email)) {
		err.push('Email không đúng định dạng!');
	}
	else if (email.length > 200) {
		err.push('Email quá dài!');
	};
	if (!website) {
		err.push('Website không được để trống!');
	}
	else if (website.length > 100) {
		err.push('Website quá dài!');
	};
	if (!phone) {
		err.push('Số điện thoại không được để trống!');
	}
	else if (phone.length > 11) {
		err.push('Số điện thoại tối đa 11 số!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Producer/Create',
			type: 'POST',
			dataType: 'html',
			data: {
				avatar: avatar,
				name: name,
				address: address,
				email: email,
				website: website,
				phone: phone
			},
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('button.close').click();
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//Category
function createCategory() {
	let name = $('input#name-change').val();
	let slug = $('input#slug-name').val();
	let metaTitle = $('input#metaTitle').val();
	let metaKeyword = $('input#metaKeyword').val();
	let metaDescription = $('textarea#metaDescription').val();
	let err = [];
	if (!name) {
		err.push('Tên thương hiệu không được để trống!');
	}
	else if (name.length > 100) {
		err.push('Tên thương hiệu quá dài!');
	}
	else {
		let result = chkCategory.find(x => x.name == name);
		if (result != undefined) {
			err.push('Tên thương hiệu đã tồn tại!');
		};
	};
	if (!metaTitle) {
		err.push('Meta Title không được để trống!');
	}
	else if (metaTitle.length > 60) {
		err.push('Meta Title quá dài!');
	};
	if (!metaKeyword) {
		err.push('Meta Keywords không được để trống!');
	}
	else if (metaKeyword.length > 255) {
		err.push('Meta Keywords quá dài!');
	};
	if (!metaDescription) {
		err.push('Meta Description không được để trống!');
	}
	else if (metaDescription.length > 160) {
		err.push('Meta Description quá dài!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Category/Create',
			type: 'POST',
			dataType: 'html',
			data: {
				name: name,
				slug: slug,
				metaTitle: metaTitle,
				metaKeyword: metaKeyword,
				metaDescription: metaDescription
			},
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('button.close').click();
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//Product
function createProduct() {
	let name = $('input#name-change').val();
	let slug = $('input#slug-name').val();
	let avatar = $('input#avatar').val();
	let categoryID = $('select#categoryID').val();
	let producerID = $('select#producerID').val();
	let price = $('input#price').val();
	let metaTitle = $('input#metaTitle').val();
	let metaKeyword = $('input#metaKeyword').val();
	let metaDescription = $('textarea#metaDescription').val();
	let err = [];
	if (!name) {
		err.push('Tên rượu không được để trống!');
	}
	else if (name.length > 200) {
		err.push('Tên rượu quá dài!');
	}
	else {
		let result = chkProduct.find(x => x.name.toLowerCase() == name.toLowerCase());
		if (result != undefined) {
			err.push('Tên rượu đã tồn tại!');
		};
	};
	if (!categoryID) {
		err.push('Bạn chưa chọn hãng rượu!');
	};
	if (!producerID) {
		err.push('Bạn chưa chọn nhà sản xuất');
	};
	if (!price) {
		err.push('Bạn chưa nhập giá bán!');
	}
	else if (isNaN(price)) {
		err.push('Giá bán phải là số!');
	};
	if (!metaTitle) {
		err.push('Bạn chưa nhập Meta Title!');
	}
	else if (metaTitle.length > 60) {
		err.push('Meta Title quá dài!');
	};
	if (!metaKeyword) {
		err.push('Meta Keywords không được để trống!');
	}
	else if (metaKeyword.length > 255) {
		err.push('Meta Keywords quá dài!');
	};
	if (!metaDescription) {
		err.push('Meta Description không được để trống!');
	}
	else if (metaDescription.length > 160) {
		err.push('Meta Description quá dài!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Product/Create',
			type: 'POST',
			dataType: 'html',
			data: {
				name: name,
				slug: slug,
				avatar: avatar,
				categoryID: categoryID,
				producerID: producerID,
				price: price,
				metaTitle: metaTitle,
				metaKeyword: metaKeyword,
				metaDescription: metaDescription
			},
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//ProductDetails
function createProductDetails(productID) {
	let name = $('input#name').val();
	let description = CKEDITOR.instances['description'].getData();
	let err = [];
	if (!name) {
		err.push('Tên mô tả không được để trống!');
	}
	else if (name.length > 150) {
		err.push('Tên mô tả quá dài!');
	};
	if (!description) {
		err.push('Nội dung không được để trống!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/ProductDetails/Create',
			type: 'POST',
			dataType: 'html',
			contentType: 'application/json',
			data: JSON.stringify({
				productID: productID,
				name: name,
				description: description
			}),
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//Post
function createPost() {
	let avatar = $('input#avatar').val();
	let name = $('input#name-change').val();
	let slug = $('input#slug-name').val();
	let category = $('select#category').val();
	let metaTitle = $('input#metaTitle').val();
	let metaKeyword = $('input#metaKeyword').val();
	let metaDescription = $('textarea#metaDescription').val();
	let summaryContent = CKEDITOR.instances['summary-content'].getData();
	let mainContent = CKEDITOR.instances['main-content'].getData();
	let err = [];
	if (!category) {
		err.push('Bạn chưa chọn mục hiển thị!');
	};
	if (!name) {
		err.push('Tên tiêu đề không được để trống!');
	}
	else if (name.length > 500) {
		err.push('Tên tiêu đề quá dài!');
	}
	else {
		let result = chkPost.find(x => x.name == name && x.category == category);
		if (result != undefined) {
			err.push('Tên tiêu đề đã tồn tại!');
		};
	};
	if (!metaTitle) {
		err.push('Meta Title không được để trống!');
	}
	else if (metaTitle.length > 60) {
		err.push('Meta Title tối đa 60 ký tự!');
	};
	if (!metaKeyword) {
		err.push('Meta Keywords không được để trống!');
	}
	else if (metaKeyword.length > 255) {
		err.push('Meta Keywords tối đa 255 ký tự!');
	};
	if (!metaDescription) {
		err.push('Meta Description không được để trống!');
	}
	else if (metaDescription.length > 160) {
		err.push('Meta Description tối đa 160 ký tự!');
	};
	if (!summaryContent) {
		err.push('Tóm tắt không được để trống!');
	}
	else if (summaryContent.length > 2000) {
		err.push('Tóm tắt quá dài!');
	};
	if (!mainContent) {
		err.push('Nội dung không được để trống!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Post/Create',
			type: 'POST',
			dataType: 'html',
			contentType: 'application/json',
			data: JSON.stringify({
				name: name,
				avatar: avatar,
				category: category,
				summaryContent: summaryContent,
				mainContent: mainContent,
				metaTitle: metaTitle,
				metaKeyword: metaKeyword,
				metaDescription: metaDescription,
				slug: slug
			}),
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				toastr.success('Đã đăng bài!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//Restaurant
function createRestaurant() {
	let name = $('input#name').val();
	let address = $('input#address').val();
	let email = $('input#email').val();
	let phone = $('input#phone').val();
	let map = $('textarea#map').val();
	let regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	let err = [];
	if (!name) {
		err.push('Tên nhà hàng không được để trống!');
	}
	else if (name.length > 255) {
		err.push('Tên nhà hàng quá dài!');
	}
	else {
		let chkName = chkRestaurant.find(n => n.name.toLowerCase() == name.toLowerCase());
		if (chkName != undefined) {
			err.push('Tên nhà hàng đã tồn tại!');
		};
	};
	if (!address) {
		err.push('Địa chỉ không được để trống!');
	}
	else if (address.length > 255) {
		err.push('Địa chỉ quá dài!');
	};
	if (!email) {
		err.push('Email không được để trống!');
	}
	else if (!regex.test(email)) {
		err.push('Email không đúng định dạng!');
	}
	else if (email.length > 200) {
		err.push('Email quá dài!');
	}
	else {
		let chkMail = chkRestaurant.find(n => n.email == email);
		if (chkMail != undefined) {
			err.push('Email đã tồn tại!');
		};
	};
	if (!phone) {
		err.push('Số điện thoại không được để trống!');
	}
	else if (isNaN(phone)) {
		err.push('Điện thoại phải là số!');
	}
	else if (phone.length > 11) {
		err.push('Số điện thoại tối đa 11 số!');
	}
	else {
		let chkPhone = chkRestaurant.find(n => n.phone == phone);
		if (chkPhone != undefined) {
			err.push('Số điện thoại đã tồn tại!');
		};
	};
	if (!map) {
		err.push('Mã nhúng bản đồ không được để trống!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Restaurant/Create',
			type: 'POST',
			dataType: 'html',
			contentType: 'application/json',
			data: JSON.stringify({
				name: name,
				address: address,
				email: email,
				phone: phone,
				map: map
			}),
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('button.close').click();
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}
//Video
function createVideo() {
	let name = $('input#name').val();
	let video = $('textarea#video').val();
	let err = [];
	if (!name) {
		err.push('Tiêu đề không được để trống!');
	}
	else if (name.length > 500) {
		err.push('Tiêu đề quá dài!');
	}
	else {
		let result = chkVideo.find(n => n.name == name);
		if (result != undefined) {
			err.push('Tiêu đề đã tồn tại!');
		};
	};
	if (!video) {
		err.push('Mã nhúng video không được để trống!');
	};
	let lstErr = '';
	for (index in err) {
		lstErr += toastr.error(err[index], 'Thông báo');
	};
	if (lstErr) {
		lstErr;
	}
	else {
		$.ajax({
			url: '/Admin/Video/Create',
			type: 'POST',
			dataType: 'html',
			contentType: 'application/json',
			data: JSON.stringify({
				name: name,
				video: video
			}),
			beforeSend: function () {
				$('.page-loader-wrapper').css('display', 'block');
			}
		})
			.done(function (res) {
				$('button.close').click();
				toastr.success('Tạo mới thành công!', 'Thông báo');
				$('.show-table').html(res);
			})
			.fail(function () {

			})
			.always(function () {
				$('.page-loader-wrapper').css('display', 'none');
			});
	};
}