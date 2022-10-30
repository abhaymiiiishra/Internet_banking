<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.sql.*" import= "java.util.*" import="p.*"
    import ="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<img src="beneficiary.jpg"  width="300" height="150" border="0" />
<span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">TRANSFER MONEY</font></h3></em></span>
 <form action="TRANSFERMONEY1.jsp" method="post" name="n">
Select benificiay :
<select name="AA" class="toolheader">
<%
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;

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
<input type="submit" value="PROCEED"> 
<center>


</form>

</body>
</html>