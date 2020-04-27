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
	
	String errMsg = "";

	String userId = request.getParameter("userId");
	
	chkExistUser = userService.getUser(userId);
	if(chkExistUser!=null) {
		errMsg = "중복처리";
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
	
	if(errMsg=="") {
%>
		<c:redirect url="../main.jsp" />
<%		
	} else {
%>
		<c:redirect url="./join.jsp?errMsg=1"/>
<%		
	}
%>