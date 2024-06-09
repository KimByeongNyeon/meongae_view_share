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
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/style.css">
<link rel="stylesheet" href="http://localhost/meonggae_prj/common/CSS/responsive.css">
</head>
<body>
<!-- header 시작 -->
<jsp:include page="../header/header.jsp" />
<!-- header 끝 -->
<div class="container">
	<div class="row">
		<div class="search_categoryNavigation">
			<%
    			String[] list = {"여성의류", "남성의류", "신발", "가방/지갑", "스타굿즈", "여성의류", "남성의류", "신발", "가방/지갑",
       							 "스타굿즈", "여성의류", "남성의류", "신발", "가방/지갑", "스타굿즈"};
				String[] list2 = {"인기카테1","인기카테2","인기카테3"};
   				pageContext.setAttribute("list", list);
   				pageContext.setAttribute("list2", list2);
			%>
			<div class="p-css">
				<p>카테고리</p>
				<div class="category-fav">
					<c:forEach items="${list2}" var="item2" varStatus="i">
						<div class="category-fav-item">
							<a class="category-one2">> ${item2}</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="category-nomal">
				<c:forEach items="${list}" var="item" varStatus="i">
					<div class="category-item">
						<a class="category-one">> ${item}</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

    <div class="featured-items">

        <div class="container">

            <div class="row">

                <div class="tab-content">

                    <div class="tab-pane active" id="trending">

                    	<div class="single-products">
							<c:forEach begin="1" end="16" varStatus="i">
                            	<div class="single-product">
                            		<div class="product-block">
                            			<a href="products_detail.jsp">
											<img src="../products-img/product-${ i.index }.jpg" alt="" class="thumbnail">
											<div class="product-description text-left">
												<p class="title">여성의류${ i.index }</p>
												<div style="overflow: hidden;">
													<p class="price" style="float: left;">1${ i.index },000원</p>
													<p class="time-ago" style="float: right;">${ i.index }일전</p>
												</div>
											</div>
                            			</a>
									</div>
								</div>
							</c:forEach>
						</div>
                   	</div>

				</div>

			</div>

		</div>

	</div>
<!-- footer include 시작 -->
	<jsp:include page="../footer/footer.jsp" />
<!-- footer include 끝 -->