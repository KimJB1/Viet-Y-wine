function selectProduct(categoryID) {
	if (categoryID == 0) {
		$.ajax({
			url: '/Wines/getAll',
			type: 'GET',
			dataType: 'html',
			data: { page: 1 },
		})
			.done(function (res) {
				$('div#show-product').html(res);
			})
			.fail(function () {
			})
			.always(function () {
			});
	}
	else {
		$.ajax({
			url: '/Wines/getByCategoryID',
			type: 'GET',
			dataType: 'html',
			data: {
				page: 1,
				categoryID: categoryID
			},
		})
			.done(function (res) {
				$('div#show-product').html(res);
			})
			.fail(function () {
			})
			.always(function () {
			});
    }
}
//Show map
function selectMap(id) {
	$.ajax({
		url: '/Contacts/showMap',
		type: 'GET',
		dataType: 'html',
		data: { id: id },
	})
		.done(function (res) {
			$('div#show-map').html(res);
		})
		.fail(function () {
		})
		.always(function () {
		});
}