<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
<script type="text/javascript">
function validateName()
{
	var x=document.forms["login"]["cname"].value
	var re = /^[A-Za-z]+$/;
	if(!re.test(x))
	{
		alert("Not a Valid Name");
		return false;
	}
	if (x==null || x=="")
 	 {
 		 alert("ENTER THE NAME");
 		 
 		 return false;
  	}
  	return true;
}

</script>  
</head>
<body>  
<jsp:include page="include.jsp" flush="true"/>
<form method="post" action="Controller" name="login">
 <img src="profile1.jpg"  width="1200" height="150" border="0" />
   <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">PROFILE</font></h3></em></span>
   <BR> ENTER THE NAME <INPUT TYPE="TEXT" name="cname"> 
   <input type=submit value="CHANGE NAME" name="action" onClick="return validateName()" >
   </form>
</body>
</html>