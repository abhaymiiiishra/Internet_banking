<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
<script type="text/javascript">
function validateMobile()
{
	var x=document.forms["login"]["mobile"].value

	if (x==null || x=="")
 	 {
 		 alert("ENTER THE MOBILE NO");
 		 
 		 return false;
  	}
  	if(isNaN(x))
 	{
 		alert("Enter the valid Mobile Number(Like : 9566137117)");
		 return false;
 	}
  	
  	if(x.length!=10)
  	{
  		alert("Mobile No. Should Be of 10 Digits");
  		return false;
  	}
  	if (x.charAt(0)!="9"&&x.charAt(0)!="8"&&x.charAt(0)!="7")
     {
         alert("Mobile No. should start with 9,8 or 7 ");
         return false
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
   <BR> ENTER THE MOBILE NUMBER <INPUT TYPE="TEXT" name="mobile"> 
    <input type=submit value="CHANGE MOBILE" name="action"  onClick="return validateMobile()">
   </form>
</body>
</html>