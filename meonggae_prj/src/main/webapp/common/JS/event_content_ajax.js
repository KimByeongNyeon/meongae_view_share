$(function() {
	$('input[name="event-type"]').click(function(e) {
		var eventType = $(this).val();
		$.ajax({
			url: '../event_page/event_handler.jsp',
			type: 'GET',
			data: {
				'event-type': eventType
			},
			success: function(data) {
				$('.article').html(data);
			},
			error: function(xhr, status, error) {
				console.error('AJAX 요청 실패: ', status, error);
			}
		});
	});
});

