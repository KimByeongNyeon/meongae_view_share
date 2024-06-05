<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
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
<script src ="../common/JS/eventJS.js"></script>
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/style.css">
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/responsive.css">
</head>
<body>
<!-- header 시작 -->
<jsp:include page="../header/header.jsp" />
<!-- header 끝 -->
    <div class="products_categoryNavigation">

        <div class="container">

            <div class="row">

                <span>Home > </span>

                <span>Men > </span>

                <span>Eyewear > </span>

                <span>Blue Jacket</span>

            </div>

        </div>

    </div>  

    <div class="short-description">

        <div class="container">

            <div class="row">

                <div class="col-md-6">

                    <div class="product-thumbnail">

                        <div class="col-md-12 col-sm-12 col-xs-12">

                            <div class="thumb-main-image"><a href=""><img src="../products-img/single-product-1.jpg" alt=""></a></div>

                        </div>

                    </div>

                    <div class="clearfix"></div>

                </div>

                <div class="col-md-6">

                    <h1 class="product-title">Blue Jacket</h1>


                    <div class="price">

                        <span>$522.00</span>

                    </div>
                    
                <div class="col-md-9">
                    <ul class="product-info-btn">

                        <li><a href=""><i class="fa fa-heart-o"></i> 0</a></li>

                        <li><a href=""><i class="fa fa-eye"></i> 236</a></li>

                        <li><a href=""><i class="fa fa-clock-o"></i> 3일전</a></li>
                    </ul>
</div>
                <div class="col-md-3 bullhorn">
                        <a href=""><i class="fa fa-bullhorn"></i> 신고하기</a>
</div>


                    <p><span class="strong-text">상품상태 : </span> 새상품</p>

                    <p><span class="strong-text">배송비 : </span> 무료배송</p>
                    
                    <p><span class="strong-text">직거래지역 : </span> 강남구 역삼동</p>

                    

					<input type="button" class="btn" value="찜하기"/>
					<input type="button" class="btn" value="멍게톡"/>

                </div>

            </div>

        </div>

    </div>

	<div class="container">

		<div class="row">
		<div class="row-before">

			<div class="col-md-7">
				<div class="product-desc">

					<h3>상품정보</h3>
					<p>
						아예 새상품<br> 일본에서 지난주 사왔어요<br> 영수증 개런티 박스 쇼핑백까지 다 있어용<br>
						직거래 가능<br> 선물하기 좋아요<br> 박스까지ㅠ있어서 그냥 바로 선물하심되여요
					</p>
				</div>

			</div>
			<div class="col-md-5 border">
				<div class="product-desc">

					<h3>상점정보</h3>
					
					<a href="#void">
					<div class="profile">
                        	<img class="profile-pic" src="../common/images/kimyear.png" alt="판매하기 이미지">
					</div>
                            <p>없는거빼고다있어샵</p>
                   	</a>

				</div>
				<div class="product-desc">

					<h3>상점후기</h3>

					<p>좋은 거래 감사합니다.</p>
					<div class="ratings">

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>
                        
                    </div>
					<p>좋은 거래 감사합니다.</p>
					<div class="ratings">

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>

                        <i class="fa fa-star"></i>
                        
                    </div>
                    <div class="review-more">
					<a href="#void">상점후기 더보기></a>
                    </div>
				</div>
			</div>


		</div>

	</div>
	</div>
	<!-- footer 시작 -->
	<jsp:include page="../footer/footer.jsp" />
	<!-- footer 끝 -->