<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
</head>
<body>
<jsp:include page="afterlogin.jsp" flush="true"/>

<%
	ArrayList person=(ArrayList)session.getAttribute("ATT");
	PersonInfo per=null;
	per=(PersonInfo)person.get(0);	
%>

<table column=4 border=5 width=800>
	<tr><td><B>DATE<td><B>TYPE<td><B>AMOUNT</td>
	<%
	person=(ArrayList)session.getAttribute("ATT");
	per=null;
	for(int i=0;i<person.size();i++){
		per=(PersonInfo)person.get(i);	
	
%>
<TR>
<TD> <%= per.getdadate() %></TD>
<TD> <%= per.gettype() %></TD>
<TD> <%= per.getamount() %></TD></TR>
<% } %>
</table>
</body>
</html>