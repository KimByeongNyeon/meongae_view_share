<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍게장터</title>
<link rel="icon" href="../common/tamcatIcon.ico"/>

<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">
<!-- Theme Stylesheet -->
<script src ="../common/JS/script.js"></script>
<script src ="../common/JS/event_content_ajax.js"></script>
<script src ="../common/JS/event_detail_ajax.js"></script>
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/style.css">
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/event_style.css">
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/responsive.css">
</head>
<body>
<!-- header 시작 -->
<jsp:include page ="../header/header.jsp" />
<div class="container" style="height:1000px;">
<div>
<h1>이벤트</h1>
</div>
<hr>
<div id="event_main">
	<div class="tab tab--item2">
		<form name="evt_frm" id="evt_frm">
		<input type="button" name ="event-type" value="진행중">
		<input type="button" name ="event-type" value="종료">
		</form>
	</div>
	<div class="article" style="overflow-y: auto;">
	<div class="event-board">
	<div class="list list--event">
    <ul class="list-ul">
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="1">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/poisn.png" alt="김병년 집단 린치 이벤트">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">김병년 집단 린치 이벤트</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024.05.23 ~ 2024-07-15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">진행</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="2">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/angry.webp" alt="멍게 장터 역삼역 Store 실시간 OPEN!!">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">멍게 장터 역삼역 Store 실시간 OPEN!!</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024.04.23 ~ 07.15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">진행</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="3">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/tomcat.png" alt="김병년 친필 사인 무료 나눔 이벤트!!">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">김병년 친필 사인 무료 나눔 이벤트!!</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 1999.02.13 ~ 2024.07.15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">진행</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="4">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/ginu.jpg" alt="이벤트 할 거 없다...">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">이벤트 할 거 없다...</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024.05.23 ~ 2024.07.15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">진행</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
               <a href="" class="event_link" data-val="5">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/myungsoo.jpg" alt="오픈 기념 랜덤 박스 이벤트!!">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">오픈 기념 랜덤 박스 이벤트!!</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024-05-23 ~ 2024-07-15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">진행</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="1">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/farewell.jpg" alt="FareWell! RestArea~~~">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">FareWell! RestArea~~~</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024-04-05 ~ 2024-05-17</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">종료</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="2">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/goodbye.jpg" alt="GoodBye!! Kiosk~~~">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">GoodBye!! Kiosk~~~</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024-05-23 ~ 2024-07-15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">종료</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="3">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/pizza.jpg" alt="이벤트 할 거 없다...">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">이벤트 할 거 없다...</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2024-03-10 ~ 2024-03-29</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">종료</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="../event_page/event_detail.jsp">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/run.png" alt="김병년을 잡아라">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">김병년을 잡아라</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2023-12-26 ~ 2024-07-15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">종료</span>
                    </div>
                </a>
            </div>
        </li>
        <li class="list-item">
            <div class="event-item">
                <a href="" class="event_link" data-val="4">
                    <div class="list__thumb">
                        <div class="image-container">
                            <img src="../common/images/run.png" alt="김병년을 잡아라">
                        </div>
                    </div>
                    <div class="list__content">
                        <div class="list__subject" aria-label="제목">
                            <span class="list__title">김병년을 잡아라</span>
                        </div>
                        <div class="list__term"><strong>이벤트 기간</strong> : 2023-12-26 ~ 2024-07-15</div>
                    </div>
                    <div class="list__status">
                        <span class="list__status--ongoing">종료</span>
                    </div>
                </a>
            </div>
        </li>
    </ul>
</div>
</div>
	</div>
	</div>
</div>
<!-- footer 시작 -->
<jsp:include page="../footer/footer.jsp" />
<!-- footer 끝 -->

</body>
</html>
