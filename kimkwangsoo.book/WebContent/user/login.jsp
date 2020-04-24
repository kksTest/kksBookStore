<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String errorMsg = request.getParameter("errorMsg");

	if(errorMsg!=null) {
		out.println("<script>alert(" + errorMsg + ")</script>");
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var errorMsg = getParameterByName('errorMsg');
	alert(errorMsg);
</script>
<script>
	function send_go() {
		if(document.loginForm.userId.value=="") {
			alert("아이디를 입력하세요.");
			document.loginForm.userId.focus();
			return;
		}
		
		if(document.loginForm.userPwd.value=="") {
			alert("비밀번호를 입력하세요.");
			document.loginForm.userPwd.focus();
			return;
		}
		
		document.loginForm.action = "./loginProc.jsp";
		document.loginForm.submit();
	}
</script>
</head>
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
 <div style = "padding: 150px;">  <!-- 화면 여백 -->
  
      <form name="loginForm" class="form-horizontal" action="./loginProc.jsp" method ='post'>
         <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
               <input type="text" class="form-control" id="userId"
                  placeholder="아이디를 입력해주세요." name="userId" required/>
            </div>
         </div>

         <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
               <input type="password" class="form-control" id="userPwd"
                  placeholder="비밀번호를 입력해주세요." name="userPwd" required/>
            </div>
         </div>

         <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
               <div class="checkbox">
                  <label><input type="checkbox" name="remember"> 아이디 저장</label>
               </div>
            </div>
         </div>
         <div class="form-group">
         <div class="col-sm-offset-5 col-sm-5">
            <button type="submit" class="btn btn-primary" name='login' onclick="send_go()">로그인</button>
                  <a href='./join.jsp' type="submit" class="btn btn-info">회원가입</a>
   </div>
   </div><!-- 화면 여백 끝-->
</form>
</div>
</div>



</body>
</html>