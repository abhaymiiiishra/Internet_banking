<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.util.*" import="p.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript">   
 window.history.forward();   
  function noBack() 
  { 
  window.history.forward(); 
  }
  </SCRIPT>
</head>
<body bgcolor="GREY">
<div class="menu" align="left">
  <span><a href="afterlogin.jsp"><img src="home.jpg" alt="Account Summary" width="70" height="55" border="0" /></a></span>
  <span><a href="TRANSFERMONEY.jsp"><img src="transfer.jpg" alt="Transfer Money" width="70" height="55" border="0" /></a></span>
  <span><a href="loan.jsp"><img src="loan.jpg" alt="Loan" width="70" height="55" border="0" /></a></span>
    <span><a href="transbill.jsp"><img src="billpay.jpg" alt="Bill pay" width="70" height="55" border="0" /></a></span>
  <span><a href="profile.jsp"><img src="profile.jpg" alt="Profile" width="70" height="55" border="0" /></a></span>
  <span><a href="1st.jsp"><img src="logout.jpg" alt="Logout" width="70" height="55" border="0" /></a></span>
  <span><img src="rr.jpg"  width="300" height="100" border="0" /></span>
  <br>
  <%
	PersonInfo per=null;
	ArrayList person=(ArrayList)session.getAttribute("ATT");
	per=(PersonInfo)person.get(0);
%>
  <H1>WelCome <%= per.getcname()%></H1>
  <br>
  <br><br>
  <br><br>
  <br><br>
</div>


</body>
</html>