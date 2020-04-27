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
	String remId =request.getParameter("remember");
	
	String chkPwd = "";
	
	String errMsg = "";
	String errMsg1 = "";
	String errMsg2 = "";
	
	user = userService.getUser(userId);
	
	

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
%>	
			<c:redirect url="./login.jsp?errMsg1=Check Password" />
<%
		}
	} else {
%>
		<c:redirect url="./login.jsp?errMsg2=Check ID" />
<%
	}
	%>
	
<%
	if(remId != null ){
		response.sendRedirect("../main.jsp");
	}
%>
