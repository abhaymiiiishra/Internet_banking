<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
      import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<%
	ArrayList person=(ArrayList)session.getAttribute("ATT");
	PersonInfo per=null;
	per=(PersonInfo)person.get(0);	
%>
 <img src="profile1.jpg"  width="1200" height="150" border="0" />
   <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033">PROFILE</font></h3></em></span>
   <BR> NAME <INPUT TYPE="TEXT" readonly="true" value=<%= per.getcname() %>> <A HREF="name.jsp"> CLICK HERE TO CHANGE</A>
   <BR> PASSWORD <INPUT TYPE="PASSWORD" readonly="true" value=<%= per.getpass() %>> <A HREF="pass.jsp"> CLICK HERE TO CHANGE</A>
   <BR> MOBILE NUMBER <INPUT TYPE="TEXT" readonly="true" value=<%= per.getcmobile() %>> <A HREF="mobile.jsp"> CLICK HERE TO CHANGE</A>
</body>
</html>