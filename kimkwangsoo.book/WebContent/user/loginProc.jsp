<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kimkwangsoo.book.user.service.UserService" %>
<%@ page import="kimkwangsoo.book.user.service.UserServiceImpl" %>
<%@ page import="kimkwangsoo.book.user.domain.User" %>
<%@ page import="java.net.URLEncoder" %>
<%
	request.setCharacterEncoding("utf-8");
	UserService userService = new UserServiceImpl();
	
	User user = new User();
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	String chkPwd = "";
	
	String errorMsg = "";
	String errorMsgType1 = "";
	String errorMsgType2 = "";
	String errorMsgType3 = "";
	String errorMsgType4 = "";
	
	user = userService.getUser(userId);
	
	out.println(userId + "<br>");
	out.println(user + "<br>");
	
	if(user!=null) {
		chkPwd = userService.getUser(userId).getUserPwd();
		if(userPwd.equals(chkPwd)) {
			session.setAttribute("userId", userId);
			if(userId.equals("admin")) {
%>
				<c:redirect url="../admin/adminMain.jsp" />
<%
			} else {
%>
				<c:redirect url="../main.jsp" />
<% 			
			}

		} else {
			errorMsg = "패스워드가 틀렸습니다.";
%>
			<c:redirect url="./login.jsp?errorMsgType1=true" />
<%
		}
	} else {
		errorMsg = "존재하지 않는 아이디입니다.";
%>
		<c:redirect url="./login.jsp?errorMsgType2=true" />
<%
	}
	
	if(userId.equals("")) {
		errorMsg = "아이디를 입력해 주십시오.";
%>
		<c:redirect url="./login.jsp?errorMsgType3=true" />
<%
	}
	
	if(userPwd.equals("")) {
		errorMsg = "비밀번호를 입력해 주십시오.";
%>
		<c:redirect url="./login.jsp?errorMsgType4=true" />
<%
	}
	
	request.setAttribute("errorMsg", "error");
	response.sendRedirect("./login.jsp?errorMsg=" + URLEncoder.encode(errorMsg, "utf-8"));
%>