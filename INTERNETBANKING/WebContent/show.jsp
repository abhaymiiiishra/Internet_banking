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
<table columns=11 border=10>
<%
	ArrayList person=(ArrayList)request.getAttribute("list");
	PersonInfo per=null;
	for(int i=0;i<person.size();i++){
		per=(PersonInfo)person.get(i);	
	
%>
<TR><TD> <%= per.getid() %></TD>
<TD> <%= per.getpass() %></TD>
<TD> <%= per.getcac() %></TD>
<TD> <%= per.getcname() %></TD>
<TD> <%= per.getcadd() %></TD>
<TD> <%= per.getcmobile() %></TD>
<TD> <%= per.getbal() %></TD>
<TD> <%= per.getbcode() %></TD>
<TD> <%= per.getdadate() %></TD>
<TD> <%= per.gettype() %></TD>
<TD> <%= per.getamount() %></TD></TR>


<% } %>
</table>
</body>
</html>


