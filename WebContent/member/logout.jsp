<%@ page pageEncoding="utf-8" %>
<%
	//session.invalidate(); // 얘는 아예 섹션 정보를 날려버리는 거고
	session.setAttribute("login", null);	// 얘는 날리는 게 아니라 그냥 null
	response.sendRedirect("member/login.jsp");

	
%>



