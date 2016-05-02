<%@page import="kosta.model.SchoolAdmin"%>
<%@page import="kosta.model.Parent"%>
<%@page import="kosta.model.MemberCheck"%>
<%@page import="kosta.model.Member"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=(String)session.getAttribute("id");
	String grade=(String)session.getAttribute("grade");
	SchoolService service=SchoolService.getInstance();
	Member member=null;
	Parent parent=null;
	SchoolAdmin sa=null;
	String modPassword=request.getParameter("modPassword");
	String modPasswordCheck=request.getParameter("modPasswordCheck");
	
	session=request.getSession();
	if(modPassword.equals(modPasswordCheck)){
		if(grade.equals("교사")){
			member=service.memberDetailService(id);
			member.setMemberPassword(modPassword);
			int re=service.userModPassowrdService(member);
			response.sendRedirect("../teacherMain.jsp");
		}else if(grade.equals("학생")){
			member=service.memberDetailService(id);
			member.setMemberPassword(modPassword);
			int re=service.userModPassowrdService(member);
			response.sendRedirect("../parentMain.jsp");
		}else if(grade.equals("학부모")){
			parent=service.parentInfoDetailService(id);
			parent.setParentPassword(modPassword);
			int re=service.parentModPasswordService(parent);
			response.sendRedirect("../parentMain.jsp");
		}else if(grade.equals("학교관리자")){
			sa=service.schoolAdminInfoDetailService(id);
			sa.setSchoolAdminPassword(modPassword);
			int re=service.schoolAdminModPasswordService(sa);
			response.sendRedirect("../schoolAdminMain.jsp");
		}else{
			response.sendRedirect("../passwordModForm.jsp?modCheck=fail");
		}
	}else{
		response.sendRedirect("../passwordModForm.jsp?modCheck=fail");
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