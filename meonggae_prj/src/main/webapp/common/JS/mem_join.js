$(function(){
	//datepicker 사용
	// 기본 사용
		//$( "#datepicker" ).datepicker();
		
		// 옵션 부여
		$( "#datepicker" ).datepicker({
			dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ], 
			dateFormat: "yy-mm-dd",
			monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
			showMonthAfterYear: true
		});
		
		//비밀번호 확인
		$("#password2").focusout(function() {
			chkCorrectPw();
		}); // focusout
		//폼 제출
		$("#btnSubmit").click(function() {
			chkInputAll();
		}); // click
		
});//ready
	//아이디 중복 체크, 우편번호 찾기 이벤트 등록
	window.onload=function() {
		// 1. 이벤트에 등록
		document.getElementById('idChk').addEventListener('click', idDupWin);
		
			// 우편번호를 검색하기 위한 이벤트 등록
		document.getElementById('zipcode').addEventListener('click', zipcodeApi);
		document.getElementById('addChk').addEventListener('click', zipcodeApi);
	}; // onload
	
	//아이디 중복 팝업창 생성
	function idDupWin() {
		// 부모 창에서 자식 창으로 값 전달: QueryString을 사용하여 전달하고
		// 자식창에서는 JSP 코드로 값을 받는다  
		var id = document.frm.id.value;
		window.open('id_dup.jsp?id=' + id, 'idDup', 
			'width=472, height=340, top=' + (window.screenY + 100) + ', left=' + (window.screenX + 100));	// 첫 번째 파라미터엔 http:// 로 시작하는 값을 줘도 됨
		
		// 2. 팝업창을 띄운다. window.open('들어갈 페이지URL', '창ID', '옵션');
		//window.open('id_dup.jsp', 'idDup', 
		//	'width=472, height=340, top=' + (window.screenY + 100) + ', left=' + (window.screenX + 100));	// 첫 번째 파라미터엔 http:// 로 시작하는 값을 줘도 됨
		
	}; // idDupWin
	
	//비밀번호와 비밀번호 확인이 일치하는지
	function chkCorrectPw() {
		if($("#password").val() != $("#password2").val()) {
			alert('비밀번호가 다릅니다');
			$("#password").val('');
			$("#password2").val('');
			$("#password").focus();
		} // end if
	}; // chkCorrectPw	
	
	//필수 입력 alert
	function chkInputAll() {
		let flagInputArrAll = true;
		let arrEssential = $(".essential");
		let arrLabel = ['아이디', '비밀번호', '이름', '생년월일', '전화번호', '우편번호',  '주소', '상세주소']
		
		$.each(arrEssential, function(index, value) {
			if($(value).val() == "") {
				alert(arrLabel[index] + '는 필수 입력입니다');
				flagInputArrAll = false;
				return false;
			} // end if
			//console.log($(value).val());
		});
		
		if(flagInputArrAll && !($("[name='gender']").is(":checked"))) {
			alert('성별은 필수 입력입니다');
			flagInputArrAll = false;
		} // end if
		
		if(flagInputArrAll){
			//location.href = 'http://sist.co.kr';	
			document.frm.submit();
			//$("#frm").submit();
		} // end if
		
	}; // chkInputAll
	
	//input태그 reset
	function resetInputAll() {
		let arrEssential = $("[type='text']");
		$.each(arrEssential, function(index, value) {
			$(value).val('');
		});
		$("[name='gender']").prop("checked", false);
	}; // resetInputAll
	
	//	다음 우편번호 API 설정
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function zipcodeApi() {
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 참고 항목 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zipcode').value = data.zonecode;
				document.getElementById("addr0").value = roadAddr;
				document.getElementById("addr1").focus();	// 커서를 상세 주소 input으로 이동

				/*
				document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
			    
				// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				if(roadAddr !== ''){
					document.getElementById("sample4_extraAddress").value = extraRoadAddr;
				} else {
					document.getElementById("sample4_extraAddress").value = '';
				}

				var guideTextBox = document.getElementById("guide");
				// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				if(data.autoRoadAddress) {
					var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
					guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
					guideTextBox.style.display = 'block';

				} else if(data.autoJibunAddress) {
					var expJibunAddr = data.autoJibunAddress;
					guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
					guideTextBox.style.display = 'block';
				} else {
					guideTextBox.innerHTML = '';
					guideTextBox.style.display = 'none';
				}
				*/
			}
		}).open();
	};//zipcodeApi