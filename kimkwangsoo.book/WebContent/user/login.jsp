<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	request.setCharacterEncoding("utf-8");
	String errMsg1=request.getParameter("errMsg1");
	if(errMsg1==null) errMsg1 ="";
	String errMsg2=request.getParameter("errMsg2");
	if(errMsg2==null) errMsg2 ="";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
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

<script>

$(document).ready(function(){
 
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var key = getCookie("key");
    $("#userId").val(key); 
     
    if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
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
                  <%=errMsg2 %>
            </div>
         </div>

         <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
               <input type="password" class="form-control" id="userPwd"
                  placeholder="비밀번호를 입력해주세요." name="userPwd" required/>
                  <%=errMsg1%>
            </div>
         </div>

         <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
               <div class="checkbox">
                  <label><input type="checkbox" name="idSaveCheck" id= 'idSaveCheck' value='y'> 아이디 저장</label>
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