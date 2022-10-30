<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.sql.*" import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;

Integer tacc=Integer.parseInt(request.getParameter("acno"));
Integer tbcode=Integer.parseInt(request.getParameter("bcode"));
String name=request.getParameter("FirstName");
Float lim=Float.parseFloat(request.getParameter("limit")); 
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con =DriverManager.getConnection("jdbc:odbc:abc","root","rahul");
	String sql="insert into bene values("+a+","+tacc+","+tbcode+",'"+name+"',"+lim+")";
	 Statement stmt=con.createStatement();
	 stmt.executeUpdate(sql);
}
	 catch(Exception e){
			System.out.println(e);
		}
	 finally{
			if(con!=null)
			{
				con.close();
			}
	}



%>
</body>
</html>