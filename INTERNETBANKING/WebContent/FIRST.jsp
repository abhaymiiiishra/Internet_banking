<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>A Practice Page</TITLE>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
</HEAD>
<SCRIPT Language="JavaScript">
moveTo (0,0);
</SCRIPT>

<FRAMESET ROWS="20%,*">
  		<FRAME SRC="1.jsp" SCROLLING=NO >
  	<FRAMESET COLS="30%,*">  	
    <FRAME SRC="2.jsp" SCROLLING=NO> 
	<FRAME SRC=<%=(String)request.getAttribute("file") %>  SCROLLING=NO>
  </FRAMESET>
</FRAMESET>

</HTML>




