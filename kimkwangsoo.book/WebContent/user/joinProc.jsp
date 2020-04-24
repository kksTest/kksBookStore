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
	User chkExistUser = new User();
	User user = new User();
	
	String errorMsg = "";
	
	String userId = request.getParameter("userId");
	
	chkExistUser = userService.getUser(userId);
	if(chkExistUser!=null) {
		errorMsg = "이미 존재하는 아이디입니다.";
	} else {
	
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		String chkPwd = request.getParameter("chkPwd");
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address1") + " " + request.getParameter("address2");
	
		user.setUserId(userId);
		user.setUserPwd(userPwd);
		user.setUserName(userName);
		user.setUserEmail(email);
		user.setUserTel(tel);
		user.setUserAddress(address);
		
		userService.addUser(user);
	}
	
	if(errorMsg=="") {
%>
		<c:redirect url="../main.jsp" />
<%		
	} else {
%>
		<c:redirect url="./join.jsp?msg=Already Used."/>
<%		
	}
%>