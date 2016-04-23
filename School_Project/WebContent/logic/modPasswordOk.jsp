<%@page import="kosta.model.MemberCheck"%>
<%@page import="kosta.model.Member"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=(String)session.getAttribute("id");
	SchoolService service=SchoolService.getInstance();
	Member member=service.memberDetailService(id);
	MemberCheck mc=service.memberCheckService(id);
	String modPassword=request.getParameter("modPassword");
	String modPasswordCheck=request.getParameter("modPasswordCheck");
	
	String grade=mc.getMemberGrade();
	session=request.getSession();
	if(modPassword.equals(modPasswordCheck)){
		member.setMemberPassword(modPassword);
		int re=service.userModPassowrdService(member);
		if(mc.getMemberGrade().equals("교사")){
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);			
			response.sendRedirect("../teacherMain.jsp");
		}else if(mc.getMemberGrade().equals("학생")){
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);
			response.sendRedirect("../studentMain.jsp");
		}else if(mc.getMemberGrade().equals("학부모")){
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);
			response.sendRedirect("../studentMain.jsp");
		}else if(mc.getMemberGrade().equals("학교관리자")){
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);
			response.sendRedirect("../schoolAdminMain.jsp");
		}else if(mc.getMemberGrade().equals("시스템관리자")){
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);
			response.sendRedirect("../systemAdminMain.jsp");
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