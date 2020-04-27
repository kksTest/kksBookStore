<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kimkwangsoo.book.user.service.UserService" %>
<%@ page import="kimkwangsoo.book.user.service.UserServiceImpl" %>
<%@ page import="kimkwangsoo.book.user.domain.User" %>
<%
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");

	if (msg == null) {
		msg = "";
	} else {
		msg = "사용중인 아이디입니다.";
	}
%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../css/main.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<script>
function regChk() {
	var userPwd = document.getElementById("userPwd");
	var chkPwd = document.getElementById("chkPwd");

    
	try {
		if(!userPwd.value) {
		} else {
			var reg_pw = /^.*(?=.{8,13})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	
			if(!reg_pw.test(userPwd.value)) {
				alert("8~13자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
				userPwd.focus();
				return false;
			} 
		}
		
		if(!(userPwd.value == chkPwd.value)) {
			alert("패스워드가 서로 같지 않습니다 정확히 입력해 주십시요");
			chkPwd.focus();
			return false;
		}

	} catch(e) {
		alert(e.message);
	}
     
	return true;
}
</script>
<body>
   <div class="container">
   
    <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 사용자 버튼 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
     <ul class='breadcrumb' style="text-align:right;">
       <li><a href='./login.jsp'>login</a></li>
       <li><a href='#'>마이페이지</a></li>
       <li><a href='./join.jsp'>회원가입</a></li>
       <li><a href='#'>장바구니</a></li>
     </ul> 
     
    
    <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 로고 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
    <div id="logo"><a class="navbar-brand center-block" href="../main.jsp">
    logo 이미지</a></div><br>
   
      <div class="row">
         <div class="col-sm-12 text-center">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
               <h2>회원가입</h2>
               <form name="joinForm" action="./joinProc.jsp" method="post">
                  <table class="table table-boardered">
                     <tr>
                        <th>이름:</th>
                        <td colspan="3"><input type="text" class="form-control" name="userName" required></td>
                     </tr>
                     <tr>
                        <th>아이디:</th>
                        <td colspan="3">
                        <input type="text" class="form-control" name="userId" id='userId' required>
								</td>
                     </tr>
                     <tr>
                        <th>비밀번호:</th>
                        <td colspan="3"><input type="password" class="form-control"  id ='userPwd'
                        name="userPwd" placeholder="8~13자 영문 대 소문자, 숫자, 특수문자를 사용하세요." required></td>
                     </tr>
                     <tr>
                        <th>비밀번호 확인:</th>
                        <td colspan="3"><input type="password"  id='chkPwd'
                        class="form-control" name="chkPwd" required></td>
                     </tr>
                     <tr>
                        <th>이메일:</th>
                        <td><input type="text" size="10px;" class="form-control" name="email1" required></td>
                        <td> @ </td>
                        <td><input type="text" class="form-control" name="email2" required></td>
                     </tr>
                     <tr>
                        <th>전화번호:</th>
                        <td colspan="3"><input type="text" class="form-control" name="tel" required></td>
                     </tr>
                     <tr>
                        <th rowspan="2">주소:</th>
                        <td colspan="3"><input type="text" class="form-control" name="address1" ></td>
                     </tr>
                     <tr>
                        <td colspan="3"><input type="text" class="form-control" name="address2"></td>
                     </tr>
                  </table>
                  <button type="button" class="btn btn-danger" onclick="location.href='../main.jsp'">메인으로</button>
			      <button type="submit" class="btn btn-primary" onclick="regChk()">회원가입</button>
               </form>
            </div>
         </div>
      </div>
   </div>
</body>
</html>