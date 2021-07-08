<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="com.javaex.dao.PhoneDao"%>  


    <%
    PhoneDao phoneDao = new PhoneDao(); 
    
    
    //파라미터값 추출(4개)다받아오자! 난배고프다! 이제 배부르다
    int personId = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String hp = request.getParameter("hp");
    String company = request.getParameter("company");
    
    //파라미터를 presonVo만들기
    PersonVo personVo = new PersonVo(personId,name,hp,company);
    System.out.println(personVo);
    
    //dao 에 update()를 사용하여 업데이트해서 수정을해보자!
    int count = phoneDao.personUpdate(personVo);
    
    //리스트 리다이렉트
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