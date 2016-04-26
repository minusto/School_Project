<%@page import="kosta.model.SchoolRegist"%>
<%@page import="kosta.model.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%
    request.setCharacterEncoding("UTF-8");
%>
<%
   SchoolService service = SchoolService.getInstance();
    int re = service.insertSchool(request);
    String schoolId=request.getParameter("schoolId");
    String id=(String)session.getAttribute("id");
    SchoolRegist sr=new SchoolRegist();
    sr.setSchoolId(schoolId);
    sr.setSchoolAdminId(id);
    if(re >0 ){
       response.sendRedirect("../schoolDetail.jsp");
       int re2 = service.insertSchoolRegistService(sr);
    }else{
       response.sendRedirect("../schoolAdminInsertSchoolForm.jsp?insert=fail");
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
</html>​