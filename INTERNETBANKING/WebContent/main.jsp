<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
</head>
<SCRIPT Language="JavaScript">
moveTo (0,0);
</SCRIPT>
 <FRAMESET rows=20%,*"> 
  		<FRAME SRC="1.html" SCROLLING=NO >
  <FRAMESET cols=40%,36%,*"> 
  		<FRAME SRC="p1.jsp"  >
  		<FRAME SRC= "aboutus.jsp"  >
  		<FRAME SRC=<%=(String)request.getAttribute("file") %>  >
</FRAMESET>
</FRAMESET>
<body>
</body>
</html>