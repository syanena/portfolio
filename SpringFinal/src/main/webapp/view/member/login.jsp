<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<style type="text/css">
body {
	background: #17C66F;
	/* fallback for old browsers */
	background: -webkit-linear-gradient(to top, #17C66F, #17C66F);
	background: -moz-linear-gradient(to top, #17C66F, #17C66F);
	background: -o-linear-gradient(to top, #17C66F, #17C66F);
	background: linear-gradient(to top, #17C66F, #17C66F);
	background-size: cover;
	background-attachment: fixed;
	font-family: 'Roboto', sans-serif;
}

button[type="submit"]:hover {
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
	transition: .5s all;
	background: #17C66F;
}

}
button[type="submit"]:hover {
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
	transition: .5s all;
	background: #17C66F;
}

button[type="submit"] {
	font-size: .9em;
	color: #fff;
	background: #17C66F;
	outline: none;
	border: 1px solid #76b852;
	cursor: pointer;
	-webkit-appearance: none;
	width: 100%;
	margin-top: 20px;
	letter-spacing: 4px;
}

button[type="button"] {
	font-size: .9em;
	color: #fff;
	background: #17C66F;
	outline: none;
	border: 1px solid #76b852;
	cursor: pointer;
	-webkit-appearance: none;
	width: 100%;
	margin-top: 20px;
	letter-spacing: 4px;
}
</style>
<head>
<title>�α��� ������</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/view/css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/view/css/mainNew.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">

			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w"
					autocomplete="off" name="login" onsubmit="loginPost();">
					<span class="login100-form-title p-b-53"> �α��� ������ </span>

					<div class="p-t-31 p-b-9">
						<span class="txt1"> ���̵� </span> <a href="#" class="txt2 bo1 m-l-5"
							id="find_id_btn"> ���̵� �����̳���? </a>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="���̵� �Է����ּ���">
						<c:if test="${errors.badEmail }">�̹� ������ �̸����� �ֽ��ϴ�.</c:if>
						<input class="input100" type="text" id="id" name="id"
							value="${param.id}" required> <span class="focus-input100"></span>
					</div>
					<c:if test="${errors.idOrPwNotMatch }">	���̵� ��ȣ�� ��ġ���� �ʽ��ϴ�.</c:if>

					<div class="p-t-13 p-b-9">
						<span class="txt1"> ��й�ȣ </span> <a href="#"
							class="txt2 bo1 m-l-5" id="find_pw_btn"> ��й�ȣ�� �����̳���? </a>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="��й�ȣ�� �Է��ϼ��� ">
						<input class="input100" type="password" id="pw" name="pw"
							value="${param.pw}" required> <span class="focus-input100"></span>
					</div>

					<br>
				<div style="margin-top: 20px">
					<a href="${url}"> <img width="225" height="50" align="top"
						src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
				</div>
			  <div style="margin-top: 20px">
				 <a href="https://kauth.kakao.com/oauth/authorize?client_id=3ef8d9de8d6e54b2b36e9a5c816d413d&redirect_uri=http://211.63.89.75:9080/SpringFinal/member/kakao_login&response_type=code">
                       <img width="225" height="50" align="top" src="${pageContext.request.contextPath}/images/kakao_login_btn_medium_narrow.png">
					</a>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">�α����ϱ�</button>
					</div>
					<button class="login100-form-btn" type="button"
						onclick="history.go(-1);">�ڷΰ���</button>

					<div class="w-full text-center p-t-55">
						<span class="txt2"> ���� ȸ���� �ƴѰ���? </span> <a href="#"
							class="txt2 bo1" id="joinBtn"> ȸ�������Ϸ����� </a>
					</div>
				</form>
				<br>
			</div>
		</div>
	</div>

</body>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	// �α���
	function loginPost() {
		var id = $('#id').val();
		var pw = $('#pw').val();

		var form = document.login;
		form.id.value = id;
		form.pw.value = pw;
		form.method = "POST";
		form.action = "${pageContext.request.contextPath}/member/login_2"
		form.submit();
	}
	$(function() {
		$("#joinBtn").click(function() {
			location.href = '${pageContext.request.contextPath}/member/join';
		})
	})

	$(function() {
		$("#find_id_btn")
				.click(
						function() {
							location.href = "${pageContext.request.contextPath}/member/find_id_form";
						})
	})
	$(function() {
		$("#find_pw_btn")
				.click(
						function() {
							location.href = "${pageContext.request.contextPath}/member/find_pw_form";
						})
	})
	// ���̹� �α���
	 	$(function() {
	 $("#naver_id_login").click(function() {
	 location.href = "${pageContext.request.contextPath}/member/login";
	 })
	 }) 
</script>
</html>