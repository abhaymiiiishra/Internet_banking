<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.util.*" import="p.*" import= "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="enqueries.jsp" flush="true"/>
<table column=4 border=5 width=800>
<tr><td><B>DATE<td><B>TYPE<td><B>AMOUNT</td>
<% ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
try
{
	
	Connection con=null ;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
	String sql="select * from widep where cac="+a+" and ddate>='"+request.getParameter("orderdate")+"' and ddate<='"+request.getParameter("ordedate")+"'";
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next())
	{
	%>
	<TR>
	<TD> <%= rs.getString(2) %></TD>
	<TD> <%= rs.getString(4) %></TD>
	<TD> <%= rs.getFloat(5) %></TD></TR>
	<%	
		
	}
}catch(Exception e){System.out.println(e);}
%>

</body>
</html>