jQuery(document).ready(function($) {
	//검색버튼 클릭
	$("#search-btn").click(function(){
		location.href="../main_page/search_contents.jsp";
	});
	
	//카테고리 토글
	$(".category-btn").click(function() {
		$(".categories").toggleClass("show");

		// .categories에 show 클래스가 있으면 .fa-bars에 color-change 클래스를 추가
		if ($(".categories").hasClass("show")) {
			$(".fa-bars").addClass("color-change");
		} else {
			$(".fa-bars").removeClass("color-change");
		}
	});//click

	//카테고리 상세 토글 보이기
	$(".category-ul li").mouseenter(function() {
		$(".category-detail").addClass("show");
	});//mouseenter
	$(".category-ul li").mouseleave(function() {
		$(".category-detail").removeClass("show");
	});//mouseleave
	//카테고리 상세 토글 유지
	$(".category-detail").mouseenter(function() {
		$(".category-detail").toggleClass("show");
	});//mouseenter
	$(".category-detail").mouseleave(function() {
		$(".category-detail").toggleClass("show");
	});//mouseleave

	//스크롤의 위치에 따라 카테고리 위치 변경
	$(window).scroll(function() {
		var scrollPosition = $(window).scrollTop();
		var topPosition = (scrollPosition > 8) ? '145px' : '216px';

		$(".categories, .category-detail").css({
			top: topPosition
		});
	});//scroll

	////////////////// 상품 상세페이지 //////////////////////////
	//찜 클릭
	$("#wishlist-btn").click(function() {
		if ($(this).hasClass("wished")) {
			$(this).removeClass("wished");
			$(this).html('<i class="fa fa-heart-o"></i> 찜 0');
		}else{
			$(this).addClass("wished");
			$(this).html('<i class="fa fa-heart"></i> 찜 1');
		}
	});//click
	
	//신고하기
	$(".open-report-modal").click(function(){
		$("#reportModal").modal("show");
	});
	$("#reportModal").on('hidden.bs.modal',function(e){
		$(this).find('form')[0].reset();
	});
	
	//이벤트 버튼
	$(".event-btn").click(function(){
		location.href="../event_page/event_main.jsp";
	});
	
	//로그인 버튼
	$(".login-btn").click(function() {
        $.ajax({
            url: '../login_page/login_page.jsp',
            type: 'GET',
            success: function(data) {
                $('#popupModal .modal-body').html(data);
                $('#popupModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('AJAX Error: ' + status + error);
            }
        });
	});
});
