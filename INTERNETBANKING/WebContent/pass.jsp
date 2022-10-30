<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<form method="post" action="Controller">
 <img src="profile1.jpg"  width="1200" height="150" border="0" />
   <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">PROFILE</font></h3></em></span>
   <BR> ENTER NEW PASSWORD <INPUT TYPE="PASSWORD" name="cpass"> 
   <input type=submit value="CHANGE PASSWORD" name="action"  >
   </form>
</body>
</html>