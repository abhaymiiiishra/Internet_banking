<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.sql.*" import= "java.util.*" import="p.*"
    import ="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function validateName()
{
var x=document.forms["price"]["amt"].value
var y=document.forms["price"]["lim"].value
var z=document.forms["price"]["balance"].value
	if (x==null || x=="")
 	 {
 		 alert("ENTER THE AMOUNT");
 		 
 		 return false;
  	}
  	if(parseFloat(x) <= 0)
	{
		alert("Amount Should be greater than 0");
		return false;
	}

  	if(isNaN(x))
 	{
 		alert("Enter the valid Amount");
		 return false;
 	}  	
	if (parseFloat(x)>parseFloat(y))
 	 {
 		 alert("AMOUNT EXCEEDING LIMITS");
 		 
 		 return false;
  	}
  	if (parseFloat(x)>parseFloat(z))
 	 {
 		 alert("AMOUNT EXCEEDING ACCOUNT BALANCE");

 		 return false;
  	}
  	return true;
}

</script>  
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<form action="Controller" method="post" name="price">
<INPUT TYPE="hidden"  name="option" VALUE=<%=request.getParameter("AA") %>>
<script type="text/javascript">
document.forms["price"]["amt"].value=document.forms["n"]["option"].value
</script>

ENTER THE AMOUNT:<input type="text" name="amt">
THE LIMIT:
<% 
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;

String tacc=request.getParameter("AA");

try{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
	String sql="Select * from bene where tacc="+tacc+" and cac="+a;
	Statement stmt=con.createStatement();
 	ResultSet rs=stmt.executeQuery(sql);
 	if(rs.next()){
 			
 		%>
 			<INPUT TYPE="TEXT" readonly="true" name="lim" VALUE=<%=rs.getFloat(3) %>>
 		
 		<%
 		
 	}
 	sql="Select * from accd where cac="+a;
	stmt=con.createStatement();
 	rs=stmt.executeQuery(sql);
 	if(rs.next()){
 			
 		%>
 			<INPUT TYPE="hidden"  name="balance" VALUE=<%=rs.getFloat(2) %>>
 		
 		<%
 		
 	}
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
<input type="Submit" value="TRANSFER" name="action" onClick="return validateName()">
</form>
</body>
</html>