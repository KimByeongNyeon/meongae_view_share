<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍게장터</title>
<link rel="icon" href="../common/tamcatIcon.ico" />

<!-- jQuery CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<!-- Theme Stylesheet -->
<script src="../common/JS/script.js"></script>
<script src="../common/JS/tab.js"></script>
<script src="../common/JS/product_add.js"></script>
<link rel="stylesheet"
	href="http://localhost/meonggae_prj/common/CSS/style.css?v=1.0">
<link rel="stylesheet"
	href="http://localhost/meonggae_prj/common/CSS/tab.css?v=1.0">
<link rel="stylesheet"
	href="http://localhost/meonggae_prj/common/CSS/product_add.css?v=1.0">
</head>

<body>
	<!-- header 시작 -->
	<jsp:include page="../header/header.jsp" />
	<!-- header 끝 -->
	<div class="container" style="height: 100%">
		<div class="tab">
			<ul class="tabnav">
				<li><a href="#tab01">상품등록</a></li>
				<li><a href="#tab02">판매상태</a></li>
			</ul>
			<div class="tabcontent">
				<div id="tab01">
					<form name="newProduct" action="" class="form-horizontal"
						method="post">
						<div class="form-group row">
							<label class="col-sm-2">이미지 등록</label>
							<div class="col-sm-3">
							<div class="addImage" id="image-show">
								<!-- 이미지 띄울 공간 -->
							</div>
								<input type="file" name="productfile">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">거래 상태</label>
							<div class="col-sm-3">
								<select>
									<option value="판매중">판매중</option>
									<option value="판매완료">판매완료</option>
									<option value="얘기중 ㅋㅋ">얘기중 ㅋㅋ</option>
								</select>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">상품명</label>
							<div class="col-sm-3">
								<input type="text" name="name" class="form-control">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">가격</label>
							<div class="col-sm-3">
								<input type="text" name="unitPrice" class="form-control">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">상세 정보</label>
							<div class="col-sm-3">
								<textarea name="description" cols="50" rows="2"></textarea>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">분류</label>
							<div class="col-sm-3">
								<input type="text" name="category" class="form-control">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">거래 방식</label>
							<div class="col-sm-3">
								<input type="button" name="zik" class="form-control" value="직거래">
								<input type="button" name="taeck" class="form-control"
									value="택배">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2">물품 상태</label>
							<div class="col-sm-5">
								<input type="radio" name="condition" value="New "> 미개봉
								<input type="radio" name="condition" value="almostNew ">
								거의 새 것 <input type="radio" name="condition" value="old ">
								사용감 있음
							</div>
						</div>

						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" class="btn btn-primary" value="등록">
							</div>
						</div>
					</form>
				</div>
				<div id="tab02">
					<form>
						<input type="search" placeholder="검색어를 입력하세요">
						<table class="table table-hover" style="width: 100%;">
							<thead>
								<tr>
									<th style="width: 150px;">물품</th>
									<th style="width: 100px;">상태</th>
									<th style="width: 100px;">카테고리</th>
									<th style="width: 150px;">상품명</th>
									<th style="width: 100px;">가격</th>
									<th style="width: 150px;">물품 상태</th>
									<th style="width: 150px;">직거래 장소</th>
									<th style="width: 50px;">찜</th>
									<th style="width: 50px;">수정</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img alt="상품 정보" src="../common/images/pizza.jpg">
									</td>
									<td><select>
											<option value="판매중">판매중</option>
											<option value="판매완료">판매완료</option>
											<option value="얘기중 ㅋㅋ">얘기중 ㅋㅋ</option>
									</select></td>
									<td>기타</td>
									<td>새 상품 같은 장초</td>
									<td>450원</td>
									<td>거의 새 것</td>
									<td>서울 시 강남구 역삼동</td>
									<td>0</td>
									<td><input type="button" class="btn btn-success btn-sm"
										value="수정"></td>
								</tr>
								<tr>
									<td><img alt="상품 정보" src="../common/images/pizza.jpg"></td>
									<td><select>
											<option value="판매중">판매중</option>
											<option value="판매완료">판매완료</option>
											<option value="얘기중 ㅋㅋ">얘기중 ㅋㅋ</option>
									</select></td>
									<td>기타</td>
									<td>새 상품 같은 장초</td>
									<td>450원</td>
									<td>거의 새 것</td>
									<td>서울 시 강남구 역삼동</td>
									<td>0</td>
									<td><input type="button" class="btn btn-success btn-sm"
										value="수정"></td>
								</tr>
							</tbody>
						</table>

					</form>

				</div>
			</div>
		</div>
		<!--tab-->
	</div>
	<!-- footer 시작 -->
	<jsp:include page="../footer/footer.jsp" />
	<!-- footer 끝 -->
</body>
</html>
