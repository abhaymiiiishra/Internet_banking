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

var x=document.forms["bene"]["acno"].value
var y=document.forms["bene"]["limit"].value
document.forms["bene"]["chk"].value="false"
	if (x==null || x=="" || y==null || y=="")
 	 {
 		 alert("ALL Fields Should Be filled");
 		 return false;
  	}
  	if(parseFloat(y) <= 0)
	{
		alert("Limits Should be greater than 0");
		return false;
	}

  	if(isNaN(x))
 	{
 		alert("Enter the Accno");
		 return false;
 	}  
 	if(isNaN(y))
 	{
 		alert("Enter the valid Limit");
		 return false;
 	}  
 	document.forms["bene"]["chk"].value="true"	
  	return true;
}

</script>  
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<img src="beneficiary.jpg"  width="300" height="150" border="0" />
   <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">BENEFICIARY</font></h3></em></span>
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="logo">
			<tr>
			
				
				
				  <td width="100" align="left" valign="top"><a href="beneficiery.jsp"><img src="add.jpg" alt="ADD" width="70" height="55" border="0" /></a></td>
				  <td width="100" align="left" valign="top"><a href="benemodify2.jsp"><img src="modify.jpg" alt="MODIFY" width="70" height="55" border="0" /></a></td>
				   <td width="180" align="left" valign="top"><a href="removebene.jsp"><img src="remove.jpg" alt="REMOVE" width="70" height="55" border="0" /></a></td>


				  <td align="left" valign="top"><img src="line1.jpg" width="1" height="55" /></td>
			
			</tr>
			</table>
			<form method="post" action="" name="bene">
			<input  type="hidden" value="false" name="chk"><br>
			A/C No: <input type="text" name="acno" id="a"><br>
			SET THE LIMITS:<input type="text" name="limit" id="s"><br>
			<input type="submit" value="ADD" onClick="return validateName()">
			</form>

<%
ArrayList person=(ArrayList)session.getAttribute("ATT");
PersonInfo per=null;
per=(PersonInfo)person.get(0);
Integer a=per.getcac();
Connection con=null ;
String tacc=request.getParameter("acno");
String lim=request.getParameter("limit"); 
String chk=request.getParameter("chk");
 if(tacc!=null  &&  lim!=null&&  lim!="" &&tacc!="")
	{
		if(Integer.parseInt(tacc)== a){
		%>
			<script  type="text/javascript">alert("OWNER OF ACCOUNT NO IS SAME")</script>
		<%	
		}

		else if(chk.compareTo("true") == 0)
		{
			
		try{
			
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection("jdbc:odbc:abc","root","root");
		String sql="Select * from accd where cac="+Integer.parseInt(tacc);
		Statement stmt=con.createStatement();
	 	ResultSet rs=stmt.executeQuery(sql);
	 	if(rs.next()){
	 		sql="insert into bene values("+a+","+Integer.parseInt(tacc)+","+Float.parseFloat(lim)+")";
			stmt=con.createStatement();
		 	stmt.executeUpdate(sql);
	 	}
	 	else
	 	{
	 		%>
	 		<script  type="text/javascript">alert("ACCOUNT NO IS NOT EXIST")</script>
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
		}
	}

%>
</body>
</html>