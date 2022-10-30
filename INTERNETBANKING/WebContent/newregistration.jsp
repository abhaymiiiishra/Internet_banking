<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.sql.*" import= "java.util.*" import="p.*" import="java.lang.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validateName()
{
var z=document.forms["reg"]["pas"].value
var w=document.forms["reg"]["rpas"].value

	if (z==null ||z==""||w==null||w=="")
 	 {
 		 alert("ALL Fields Should Be filled");
 		 return false;
  	}  
 	if(z!=w)
 	{
 		alert("Password Didnt match");
 		return false;
 	}
 	
  	return true;
}

</script>  
</head>
<body bgcolor="#E6E6FA">
<jsp:include page="include.jsp" flush="true"/>
<%
Integer i=(Integer)session.getAttribute("A");
if(i==0)
{
%>
<script type="text/javascript">alert("LOGIN ID ALREADY EXIST")</script>
<%
}
session.setAttribute("A",1);
%>
    <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">OPEN A NEW ACCOUNT</font></h3></em></span>
	<div class="menu" align="center">
  <span><img src="nwac.jpg"  width="150" height="70" border="0" /></span>
  <span><img src="reg_ac.jpg"  width="350" height="70" border="0" /></span>
    <span><img src="reg1.jpg"  width="150" height="70" border="0" /></span>
   
 
</div>

	<form method="post" action="Controller" name="reg" >
	<BR>LOGIN ID: <input type="text" name="log" ><br>
	<BR>PASSWORD: <input type="password" name="pas" ><br>
	<BR>RETYPE PASSWORD: <input type="password" name="rpas"><br>

	<BR><font face="Times New Roman" size="+2" color="#660033">Your New Account No. is:</font>
	<%
Connection con=null;
try{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
	String sql="Select * from acc ";
	Statement stmt=con.createStatement();
 	ResultSet rs=stmt.executeQuery(sql);
 	rs.next();
 	Integer a=rs.getInt(1)+1;
 	%>
 	<INPUT TYPE="text" disabled="disabled"  name="ac" VALUE="<%=a %>">
 	<INPUT TYPE="hidden"   name="acn" VALUE="<%=a %>">
	<%
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

	<br>
	<BR><input type="submit" value="OPEN ACCOUNT" name="action" onClick="return validateName()">
	<input type="RESET" value="RESET" >
	</form>
</body>
</html>