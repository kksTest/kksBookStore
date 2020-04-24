<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>MAIN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/banner.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	 #footer {position:absolute; bottom:0; width:100%; background:#353845;}
</style>
<body>


<div class = 'container'>

   <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 사용자 버튼 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
     <ul class='breadcrumb' style="text-align:right;">
<%
	if(session.getAttribute("userId")==null) {
%>
	    <li><a href='./user/login.jsp'>login</a></li>
<%
	} else {
%>
		<li><%= session.getAttribute("userId") %>님, 환영합니다.</li>
		<li><a href='./user/logoutProc.jsp'>logout</a></li>
<%
	}
%>
       <li><a href='#'>마이페이지</a></li>
       <li><a href='./user/join.jsp'>회원가입</a></li>
       <li><a href='#'>장바구니</a></li>
     </ul> 
     
    
    <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 로고 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
    <div id="logo"><a class="navbar-brand center-block" href="./main.jsp">
    logo 이미지</a></div><br>
    
    <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 검색창 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ --><br>
    <div style="text-align:center;">
    <span class='search_box'>
      <input type='text' class='input_text' placeholder="검색할 책을 입력하세요"/></span>
      <button type='submit' class='search_bt'>
   <span class='glyphicon glyphicon-search'>
   </span></button></div><br><br><br>
        
   <!--  카테고리 분류 -->
   <ul class='nav nav-tabs'>
      <li class='dropdown'>
         <a class='dropdown-toggle' data-toggle='dropdown'
         href='#'> 국내도서 <span class='caret'></span></a>
         <ul class='dropdown-menu'>
            <li><a href="#">문학 소설</a></li>
            <li><a href="#">경제 경영</a></li>
            <li><a href="#">인문 사회</a></li>
            <li><a href="#">정치 외교</a></li>
            <li><a href="#">논문 에세이</a></li>
         </ul>
      </li>
      
      <li class='dropdown'>
         <a class='dropdown-toggle' data-toggle='dropdown'
         href='#'> 외국도서 <span class='caret'></span></a>
         <ul class='dropdown-menu'>
            <li><a href="#">영어 원서</a></li>
            <li><a href="#">폴란드 원서</a></li>
            <li><a href="#">스페인 원서</a></li>
            <li><a href="#">독일 원서</a></li>
            <li><a href="#">프랑스 원서</a></li>
         </ul>
      </li>
      
      <li class='dropdown'>
         <a class='dropdown-toggle' data-toggle='dropdown'
         href='#'> eBook <span class='caret'></span></a>
         <ul class='dropdown-menu'>
            <li><a href="#">소설</a></li>
            <li><a href="#">만화</a></li>
            <li><a href="#">오디오북</a></li>
            <li><a href="#">무료 eBook</a></li>
            <li><a href="#">전자도서관</a></li>
         </ul>
      </li>
   </ul>
   <br><br><br><!--  카테고리 분류 END-->
   
   <!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 배너 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
<div id="slide">
  <input type="radio" name="pos" id="pos1" checked>
  <input type="radio" name="pos" id="pos2">
  <input type="radio" name="pos" id="pos3">
  <input type="radio" name="pos" id="pos4">
  <ul><li>책소개 1</li><li>책소개 2</li><li>책소개 3</li><li>책소개 4</li></ul>
  <p class="pos">
    <label for="pos1"></label>
    <label for="pos2"></label>
    <label for="pos3"></label>
    <label for="pos4"></label>
  </p></div><br><br>
<!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 배너 끝 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
   
   <!-- 책 소개 -->
   <div style="text-align:left;">  <!-- 책 1 -->
   <div class="col-sm-3 col-md-3" >
       <div class="thumbnail">
         <a href="./book/01.html   " class="thumbnail" style="height: 200px;">이미지 </a>
         <div class="caption">
            <h3>추천도서</h3>
            <h4>스티브잡스</h4>
            <p>책소개글</p>
         </div>
      </div>
   </div>
   </div>
   
   <div style="text-align:left;">  <!-- 책 2 -->
   <div class="col-sm-3 col-md-3" >
       <div class="thumbnail">
         <a href="#" class="thumbnail" style="height: 200px;">이미지 </a>
         <div class="caption">
            <h3>오늘의책</h3>
            <h4>보통사람들의 전쟁</h4>
            <p>책소개글</p>
         </div>
      </div>
   </div>
   </div>
   
   <div style="text-align:left;">  <!-- 책 3 -->
   <div class="col-sm-3 col-md-3" >
       <div class="thumbnail">
         <a href="#" class="thumbnail" style="height: 200px;">이미지 </a>
         <div class="caption">
            <h3>베스트셀러</h3>
            <h4>사피엔스</h4>
            <p>책소개글</p>
        </div>
      </div>
   </div>
   </div>
   
   <div style="text-align:left;"><!-- 책 4 -->
   <div class="col-sm-3 col-md-3" >
       <div class="thumbnail">
         <a href="#" class="thumbnail" style="height: 200px;">이미지 </a>
         <div class="caption">
             <h3>추천도서</h3>
             <h4>특이점이온다</h4>
             <p>책소개글</p>
           </div>
      </div>
   </div>
   </div>
</div><!-- 화면 여백 끝 --><br><br><br><br><br>

<!-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ footer $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ -->
<footer>
   <div class='container'><br><br>
      <dl><dd><table class="table-footer table-boardered"><tbody><tr>
      <td> 상호명: 오늘의 책</td><td> 대표명: 김광수</td></tr> <tr>
      <td colspan="2"> 사업자등록번호: 000-00-0000</td></tr><tr>
      <td colspan="2"> (000-00) 서울시 마포구 서교동</td></tr><tr>
      <td>TEL: +48)604-000</td><td>Email: kwangsoo@naver.com</td></tr><tr>
      <td colspan="2">Copyright kwangsoo. All Rights Reserved</td></tr></tbody></table></dd></dl>
   </div>
</footer>
</body>
</html>