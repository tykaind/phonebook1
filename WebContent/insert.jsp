<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
System.out.println(name + ", " + hp + ", " + company);

PersonVo personVo = new PersonVo(name, hp, company);

PhoneDao phoneDao = new PhoneDao();
phoneDao.personInsert(personVo);

List<PersonVo> personList = phoneDao.getPersonList();
//System.out.println(personList.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호 리스트-insert</h1>
	<p>입력한 정보 내역입니다.</p>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=personList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=personList.get(i).getCompany()%></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>
	<a href="./list.jsp"> 리스트 </a>
</body>
</html>