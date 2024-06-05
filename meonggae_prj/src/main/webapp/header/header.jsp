<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-bar">
    <div class="container">
        <div class="action pull-right">
            <ul>
                <li class="login"><a href="javascript:void(0);" class="login-btn"><i class="fa fa-user"></i> 로그인</a></li>
                <li class="join"><a href="javascript:void(0);" class="login-btn"><i class="fa fa-lock"></i> 회원가입</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3">
                <div class="logo">
                    <a href="http://localhost/meonggae_prj/main_page/main_contents.jsp">
                        <img src="../common/images/meonggaelogo.png">
                    </a>
                </div>
            </div>
            <div class="col-md-6 col-sm-5">
                <div class="search-form">
                    <form class="navbar-form" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="상품명, 상점명 입력">
                        </div>
                        <button type="button" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="col-md-3 col-sm-4">
                <div class="col-md-4 col-sm-4">
                    <a href="http://localhost/meonggae_prj/product_page/product_add.jsp" class="icons">
                        <img src="../common/images/meonggaesale.png" alt="판매하기 이미지">
                        <span class="icons-text">판매하기</span>
                    </a>
                </div>
                <div class="col-md-4 col-sm-4">
                    <a href="#void" class="icons">
                        <img src="../common/images/meonggaeStore.png" alt="내상점 이미지">
                        <span class="icons-text">내 상점</span>
                    </a>
                </div>
                <div class="col-md-4 col-sm-4">
                    <a href="http://localhost/meonggae_prj/meongae_talk/talk_page.jsp" class="icons">
                        <img src="../common/images/meonggaeTalk.png" alt="멍게톡 이미지">
                        <span class="icons-text">멍게톡</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 col-sm-3">
                <button type="button" class="category-btn">
                    <i class="fa fa-bars"></i> 전체보기
                </button>
                <div class="categories">
                    <div class="category-list">
                        <ul class="category-ul">
                            <li><a href="#void" id="" data-value="">여성의류</a></li>
                            <li><a href="#void" id="" data-value="">남성의류</a></li>
                            <li><a href="#void" id="" data-value="">신발</a></li>
                            <li><a href="#void" id="" data-value="">가방/지갑</a></li>
                            <li><a href="#void" id="" data-value="">스타굿즈</a></li>
                        </ul>
                    </div>
                </div>
                <div class="category-detail">
                    <div class="detail-list">
                        <ul class="detail-ul">
                            <li><a href="#void" id="womenCloth" data-value="아우터">아우터</a></li>
                            <li><a href="#void">상의</a></li>
                            <li><a href="#void">바지</a></li>
                            <li><a href="#void">치마</a></li>
                            <li><a href="#void">원피스</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-3">
                <button type="button" class="event-btn" name="event-btn" value="이벤트">
                    <i class="fa fa-star" aria-hidden="true"></i> 이벤트
                </button>
            </div>
        </div>
    </div>
</div>
       	<!-- Header 끝 -->
       	<!-- Modal -->
<div class="modal fade" id="popupModal" tabindex="-1" role="dialog" aria-labelledby="popupModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="popupModalLabel">로그인</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- AJAX로 가져온 로그인 페이지가 여기 표시됨 -->
            </div>
            <div class="modal-footer">
            <p style="text-align: center">
            도움이 필요하면 이메일 또는 고객센터1670-2910로 문의 부탁드립니다.
			고객센터 운영시간: 09~18시 (점심시간 12~13시, 주말/공휴일 제외)
            </p>
            </div>
        </div>
    </div>
</div>
<!-- Modal 끝 -->