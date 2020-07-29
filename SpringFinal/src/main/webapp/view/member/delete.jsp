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
    background: #8DC26F;
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
	<title>Login V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/view/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/view/css/mainNew.css">
<title>ȸ�� Ż��</title>
</head>
<body>

<%-- 	<div class="container">
		<div class="page-header">
			<h1>
				ȸ�� Ż�� <small>Leave</small>
			</h1>
			<form action="${pageContext.request.contextPath}/member/delete"
				method="post">
				<div class="col-md-6 col-md-offset-3" style="padding-top: 100px;">
					<div class="form-group">
						<label for="InputEmail"></label> <input type="password"
							class="form-control" name="pw" id="pw" value="${member.pw}"
							placeholder="��ȣ�� �Է��ϼ���">
						<div>
							<c:if test="${errors.wrongPw}">�߸��� ��й�ȣ �Դϴ�</c:if>
							<c:if test="${errors.null}">�Է��Ͻ�!</c:if> 
						</div>
						<input type="hidden" name="id" value="${member.id}">
					</div>
					<div class="form-group">
						<input type="submit" class="form-control" value="ȸ�� Ż���ϱ�">
					</div>
					<div>
						<button type="button" onclick="history.go(-1);"
							class="form-control">�ڷΰ���</button>
					</div>
				</div>
			</form>
		</div>
	</div> --%>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/member/delete"	method="post" autocomplete=��off��>
					<span class="login100-form-title p-b-53">
						ȸ�� Ż��
					</span>
					<div class="p-t-31 p-b-9">
						<span class="txt1" >
							��й�ȣ�� �Է��ϼ���
						</span>
					</div>
					<input type="hidden" name="id" value="${member.id}">
					<div class="wrap-input100 validate-input" data-validate = "��й�ȣ�� �Է��� �ּ���">
						<input class="input100" type="password" name="pw"  value="${member.pw}" >
						<span class="focus-input100"></span>	
					</div>
					<c:if test="${errors.wrongPw}">�߸��� ��й�ȣ �Դϴ�</c:if>
					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn" type="submit">
							ȸ�� Ż���ϱ�
						</button>
						<button class="login100-form-btn" type="button" onclick="history.go(-1);">
							�ڷΰ���
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>