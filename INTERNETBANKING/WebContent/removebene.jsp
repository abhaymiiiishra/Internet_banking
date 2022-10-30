<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.sql.*" import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	.toolheader{
	width: 25em;
	}
	li {  display:inline;font-size:30px;font-weight:bold}
	</style>
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<%
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;
String tacc=request.getParameter("AA");
if(tacc!=null  &&tacc!="")
{
	try{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		String sql="delete  from bene where tacc="+Integer.parseInt(tacc);
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
}
%>
 <form action="removebene.jsp" method="post">
 <img src="beneficiary.jpg"  width="300" height="150" border="0" />
  <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033"><center>BENEFICIARY</center></font></h3></em></span>
  <center>
 <table width="100%" border="0" cellpadding="0" cellspacing="0" id="logo" >
			<tr>			
				  <td width="33%" align="center" valign="top"><a href="beneficiery.jsp"><img src="add.jpg" alt="ADD" width="35" height="55" border="0" /></a></td>
				  <td width="33%" align="center" valign="top"><a href=""><img src="modify.jpg" alt="MODIFY" width="35" height="55" border="0" /></a></td>
				   <td width="33%" align="center" valign="top"><a href=""><img src="remove.jpg" alt="REMOVE" width="35" height="55" border="0" /></a></td>
				  <td align="left" valign="top"><img src="line1.jpg" width="1" height="55" /></td>
			</tr>
</table>
</center><br>

<li>Select benificiay to remove:</li>
<li><select name="AA" class="toolheader">
<option ></option>
<%

 con=null ;
	try{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		String sql="Select * from bene where cac="+a;
		Statement stmt=con.createStatement();
	 	ResultSet rs=stmt.executeQuery(sql);
	 	if(rs.next()){
	 		System.out.println(rs.getInt(2));
	 		do
	 		{
	 			
	 		%>
	 			<option ><%=rs.getInt(2) %></option>
	 		<%
	 		}while(rs.next());
	 		
	 	}
	 	else
	 	{
	 		%>
	 		<script  type="text/javascript">alert("NO BENIFICIERY EXIST")</script>
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
</select><li><br>
<center><input type="Submit" value="Remove Beneficiary"></center>

</form>

</body>
</html>