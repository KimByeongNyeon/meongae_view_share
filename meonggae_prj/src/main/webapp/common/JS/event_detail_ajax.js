$(function() {
$(".event_link").click(function(e) {
		e.preventDefault();
		e.stopPropagation();  // 이벤트 전파 차단
		var eventCode = $(this).data('val');
		console.log("event-code:", eventCode);

		$.ajax({
			url: 'http://localhost/meonggae_prj/event_page/event_detail.jsp',
			type: 'GET',
			data: {
				'event-code': eventCode,
			},
			success: function(data) {
				$('#event_main').html(data);
			},
			error: function(xhr, status, error) {
				console.error('AJAX 요청 실패: ' + status + " " + error);
			}
		});
	});
});