<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="kosta.model.SchoolService"%>
<%@page import="kosta.model.SubjectScore" %>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="subjectScore" class="kosta.model.SubjectScore"></jsp:useBean>
<jsp:setProperty property="*" name="subjectScore"/>
<%
SchoolService service = SchoolService.getInstance();
int re = service.insertSubjectScore(subjectScore);


if(re > 0){
   response.sendRedirect("../teacherInsertScoreForm.jsp");
}else{
   System.out.print("입력실패");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Here</title>
</head>
<body>

</body>
</html>​​