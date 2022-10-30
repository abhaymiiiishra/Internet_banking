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
<jsp:include page="include.jsp" flush="true"/>
<%
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;
String tacc=request.getParameter("BB");
String lim=request.getParameter("limit");
System.out.println(tacc);
System.out.println(lim);
if( lim!=null&& lim!="" && tacc!=null && tacc!="")
{
	try{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		String sql="update  bene set camt="+Float.parseFloat(lim)+" where tacc="+Integer.parseInt(tacc)+"&& cac="+a;
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
<form action="benemodify2.jsp" method="post">
 <img src="beneficiary.jpg"  width="300" height="150" border="0" />
  <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033"><center>BENEFICIARY</font></h3></em></span>
 <table width="100%" border="0" cellpadding="0" cellspacing="0" id="logo">
			<tr>
			
				
				
				  <td width="100" align="left" valign="top"><a href="beneficiery.jsp"><img src="add.jpg" alt="ADD" width="70" height="55" border="0" /></a></td>
				  <td width="100" align="left" valign="top"><a href="benemodify2.jsp"><img src="modify.jpg" alt="MODIFY" width="70" height="55" border="0" /></a></td>
				   <td width="180" align="left" valign="top"><a href="removebene.jsp"><img src="remove.jpg" alt="REMOVE" width="70" height="55" border="0" /></a></td>


				  <td align="left" valign="top"><img src="line1.jpg" width="1" height="55" /></td>
			
			</tr>
			</table>
		<h2>Select benificiay to modify</h2><select name="BB">
	
<%
 
 con=null ;
	try{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		String sql="Select * from bene where cac="+a;
		Statement stmt=con.createStatement();
	 	ResultSet rs=stmt.executeQuery(sql);
	 	if(rs.next()){
	 		
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
</select><br>
<form action="benemodify2.jsp">
SET THE LIMITS:<input type="text" name="limit" /><br />
<input type="submit" value="CHANGE" />
</form>
</body>
</html>