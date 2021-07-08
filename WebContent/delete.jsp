<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.PhoneDao"%>    
    
<%

PhoneDao phoneDao = new PhoneDao();

//파라미터 꺼내기!
int personId = Integer.parseInt(request.getParameter("id"));
//System.out.print(personId);


//삭제하기
int count = phoneDao.personDelete(personId);
//System.out.print(count);


//리다이렉트(리스트요청)
response.sendRedirect("./list.jsp");


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