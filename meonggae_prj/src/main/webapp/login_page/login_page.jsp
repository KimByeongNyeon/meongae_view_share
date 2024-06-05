<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="로그인"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 구글 로그인 -->
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="504509258936-lr1798fsa95ac3nhhvmjh8erjvni6l6m.apps.googleusercontent.com.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

    <title>로그인</title>
	<!-- script -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <!-- 카카오 로그인 -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <!-- 카카오 로그인 끝 -->
    <!-- Bootstrap CSS -->

    <!-- 나의 스타일 추가 -->
    <link rel="stylesheet" href="../common/CSS/login.css">

  </head>
  <body class="text-center">
    
    <!--  html 전체 영역을 지정하는 container -->
    <div id="container">
      <!--  login 폼 영역을 : loginBox -->
      <div id="loginBox">
      
        <!-- 로그인 페이지 타이틀 -->
        <div id="loginBoxTitle">멍게장터</div>
        <!-- 아이디, 비번, 버튼 박스 -->
        <form>
        <div id="inputBox">
          <div class="input-form-box"><span>아이디 </span><input type="text" name="uid" class="form-control"></div>
          <div class="input-form-box"><span>비밀번호 </span><input type="password" name="upw" class="form-control"></div>
          <div class="button-login-box" >
            <!-- <button type="button" class="btn btn-primary btn-xs" style="width:100%">로그인</button> -->
           <!-- 네이버 로그인 버튼 시작 -->
           <!-- <div id="naver_Id_Login">네이버 아이디로 로그인</div> -->
           <!-- 네이버 로그인 버튼 끝 -->
           <!-- 카카오 로그인 버튼 시작 -->
           <a id="kakao-login-btn" href="javascript:loginWithKakao()">
			<img 
				src="../common/images/kakao_login_medium_wide.png" width="222"
				alt="카카오 로그인 버튼">
		</a>
           <!-- 카카오 로그인 버튼 끝 -->
           <!-- 구글 로그인 버튼 시작 -->
           <div class="g-signin2" style ="width:280px; border-radius:20px; height:40px; padding-top: 10px; padding-bottom: 10px;" data-onsuccess="onSignIn" data-theme="dark">
           </div><br>
           <!-- 구글 로그인 버튼 끝-->
           <a href= "http://localhost/meonggae_prj/login_page/mem_join.jsp">소셜 인증 없이 회원가입 하기</a>
		<div style="padding-top: 10px;">
			<input type="button" class="btn btn-success" value="로그인">
		</div>
          </div>
        </div>
        </form>
      </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->

  </body>
</html>
