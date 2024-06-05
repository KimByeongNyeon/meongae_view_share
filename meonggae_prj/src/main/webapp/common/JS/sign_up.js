$(function() {
	//아이디 유효성검사
	$("#idChk").click(function() {
		var id = document.frm.id.value;
		var reg = /^[A-z0-9]{5,12}$/;//영문/숫자 5~12자 이내인지 확인
		if (id == "") {
			alert("아이디를 영문, 숫자 5~12자 이내로 입력해주세요.");
			return;
		} else if (!reg.test(id)) {
			alert("아이디를 영문, 숫자 5~12자 이내로 입력해주세요.");
			$("#id").val('');
			$("#id").focus();
			return;
		} else {
			window.open("../join_page/id_dup.jsp?id=" + id, "idDup", "width=472, height=390, top=" +
				(window.screenY + 100) + ", left=" + (window.screenX + 100));
		}
	});

	//비밀번호 유효성 검사
	$('#password2').focusout(function() {
		var pass = document.frm.password.value;
		var pass2 = document.frm.password2.value;
		var reg = /^[A-z0-9]{5,12}$/;
		if (pass != pass2) {
			alert('비밀번호가 다릅니다');
			$("#password").val('');
			$("#password2").val('');
			$("#password").focus();
		} else if (!reg.test(pass)) {
			alert("비밀번호를 영문, 숫자 5~12자 이내로 입력해주세요.");
			$("#password").val('');
			$("#password2").val('');
			$("#password").focus();
		}
	});

	//닉네임 유효성 검사
	$("#nickChk").click(function() {
		var nick = document.frm.nick.value;
		var ko_reg = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]{1,12}$/;//한글/영문/숫자 1~12자 이내인지 확인
		if (nick == "") {
			alert("닉네임을 한글, 영문, 숫자 1~12자 이내로 입력해주세요.");
			$("#nick").focus();
			return;
		} else {
			window.open("../join_page/nick_dup.jsp?nick=" + nick, "nickDup", "width=472, height=390, top=" +
				(window.screenY + 100) + ", left=" + (window.screenX + 100));
		}
	});

	//입력 요소 유효성검사
	$("#btnsubmit").click(function() {
		var email1 = document.frm.email1.value;
		var email2 = document.frm.email2.value;
		var email = email1 + "@" + email2;
		var emailPattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-za-z0-9\-]+/;
		if (!$("#agree1").prop("checked")) {
			alert("회원가입약관에 체크해 주세요");
			return;
		} else if (!$("#agree2").prop("checked")) {
			alert("개인정보취급방침에 체크해 주세요");
			return;
		} else if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
		} else if ($("#password").val() == "" || $("#password2").val() == "") {
			$("#password").val('');
			$("#password2").val('');
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();
		} else if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
		} else if ($("#nick").val() == "") {
			alert("닉네임을 입력해주세요.");
			$("#nick").focus();
		} else if ($("#email1").val() == "" || $("#email2").val() == "") {
			alert("이메일을 입력해주세요.");
			$("#email1").val('');
			$("#email2").val('');
			$("#email1").focus();
		} else if (!emailPattern.test(email)) {
			alert("이메일 형식이 맞지 않습니다.");
			$("#email1").val('');
			$("#email2").val('');
			$("#email1").focus();
		} else {
			var obj = document.frm;
			obj.submit();
		}
	});
});//ready