<%@page import="kosta.model.MemberCheck"%>
<%@page import="kosta.model.Member"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	SchoolService service=SchoolService.getInstance();
	Member member=service.memberDetailService(id);
	MemberCheck mc=service.memberCheckService(id);
	String modPassword=request.getParameter("modPassword");
	String modPasswordCheck=request.getParameter("modPasswordCheck");
	if(modPassword.equals(modPasswordCheck)){
		member.setMemberPassword(modPassword);
		int re=service.userModPassowrdService(member);
		if(mc.getMemberGrade().equals("교사")){
			response.sendRedirect("../teacherMain.jsp?id="+id);
		}else if(mc.getMemberGrade().equals("학생")){
			response.sendRedirect("../studentMain.jsp?id="+id);
		}else if(mc.getMemberGrade().equals("학부모")){
			response.sendRedirect("../studentMain.jsp?id="+id);
		}else if(mc.getMemberGrade().equals("학교관리자")){
			response.sendRedirect("../schoolAdminMain.jsp?id="+id);
		}else if(mc.getMemberGrade().equals("시스템관리자")){
			response.sendRedirect("../systemAdminMain.jsp?id="+id);
		}
	}else{
		response.sendRedirect("../passwordModForm.jsp?id="+id+"&modCheck=fail");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
         
</body>
</html>