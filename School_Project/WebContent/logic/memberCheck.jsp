<%@page import="kosta.model.Member"%>
<%@page import="kosta.model.SystemAdmin"%>
<%@page import="kosta.model.Parent"%>
<%@page import="kosta.model.SchoolAdmin"%>
<%@page import="kosta.model.MemberCheck"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	SchoolService service = SchoolService.getInstance();
	session = request.getSession();
	if (!request.getParameter("id").equals("") && !request.getParameter("pass").equals("")) {
		String adminLogin = request.getParameter("schoolAdminLogin");
		String parentLogin = request.getParameter("parentLogin");
		String systemLogin = request.getParameter("systemAdminLogin");
		//학교관리자 로그인처리
		if (adminLogin != null) {
			SchoolAdmin sa = service.schoolAdminInfoDetailService(id);
			if (sa != null) {
				if (sa.getSchoolAdminPassword().equals(pass) && pass.equals("1234")) {
					session.setAttribute("id", id);
					session.setAttribute("name", sa.getSchoolAdminName());
					session.setAttribute("grade", "학교관리자");
					response.sendRedirect("../passwordModForm.jsp");
				} else if (sa.getSchoolAdminPassword().equals(pass)) {
					session.setAttribute("id", id);
					session.setAttribute("name", sa.getSchoolAdminName());
					session.setAttribute("grade", "학교관리자");
					response.sendRedirect("../teacherMain.jsp");
				} else {
					response.sendRedirect("../main.jsp?login=fail");
				}
			} else {
				response.sendRedirect("../main.jsp?login=fail");
			}
		} //학부모 로그인 처리
		else if (parentLogin != null) {
			Parent parent = service.parentInfoDetailService(id);
			if (parent != null) {
				if (parent.getParentPassword().equals(pass) && pass.equals("1234")) {
					session.setAttribute("id", id);
					session.setAttribute("name", parent.getParentName());
					session.setAttribute("grade", "학부모");
					response.sendRedirect("../passwordModForm.jsp");
				} else if (parent.getParentPassword().equals(pass)) {
					session.setAttribute("id", id);
					session.setAttribute("name", parent.getParentName());
					session.setAttribute("grade", "학부모");
					response.sendRedirect("../studentMain.jsp");
				} else {
					response.sendRedirect("../main.jsp?login=fail");
				}
			} else {
				response.sendRedirect("../main.jsp?login=fail");
			}
		} //시스템관리자 로그인 처리
		else if (systemLogin != null) {
			SystemAdmin sa = service.systemAdminInfoDetailService(id);
			if (sa != null) {
				if (sa.getSystemAdminPassword().equals(pass)) {
					session.setAttribute("id", id);
					session.setAttribute("grade", "시스템관리자");
					response.sendRedirect("../systemAdminMain.jsp");
				} else {
					response.sendRedirect("../main.jsp?login=fail");
				}
			} else {
				response.sendRedirect("../main.jsp?login=fail");
			}
		} //교사 , 학생 로그인 처리		
		else {
			MemberCheck mc = service.memberCheckService(id);
			Member member=service.memberDetailService(id);
			if (mc != null) {
				String grade = mc.getMemberGrade();
				if (mc.getMemberPassword().equals(pass)) {
					if (pass.equals("1234")) {
						session.setAttribute("id", id);
						session.setAttribute("name", member.getMemberName());
						session.setAttribute("grade", grade);
						response.sendRedirect("../passwordModForm.jsp");
					} else if (mc.getMemberGrade().equals("교사")) {
						session.setAttribute("id", id);
						session.setAttribute("name", member.getMemberName());
						session.setAttribute("grade", grade);
						response.sendRedirect("../teacherMain.jsp");
					} else if (mc.getMemberGrade().equals("학생")) {
						session.setAttribute("id", id);
						session.setAttribute("name", member.getMemberName());
						session.setAttribute("grade", grade);
						response.sendRedirect("../studentMain.jsp");
					}
				} else {
					response.sendRedirect("../main.jsp?login=fail");
				}
			}else{
				response.sendRedirect("../main.jsp?login=fail");
			}
		}
	} else {
		response.sendRedirect("../main.jsp?login=fail");
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