<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="afterlogin.jsp" flush="true"/>

<%
	ArrayList person=(ArrayList)session.getAttribute("ATT");
	PersonInfo per=null;
	per=(PersonInfo)person.get(0);
	
%>
BALANCE IS:<%= per.getbal()%>
</body>
</html>