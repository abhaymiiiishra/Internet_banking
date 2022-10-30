<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="calendarDateInput.js"></script>
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
<img src="enq.jpg"  width="600" height="150" border="0" />
  <img src="enquiries.jpg"  width="500" height="150" border="0" />
   <p><h3>Please give the time interval for which you want to view the transactions</h3>
		 <form method="post" action="afterenquery.jsp" align ="center">
			 Enter the dates:
    
	<br>
	
	<br>
			FROM<script>DateInput('orderdate', true, 'YYYY-MM-DD')</script>
			
			To:
			<script>DateInput('ordedate', true, 'YYYY-MM-DD')</script>
			
<br>
			<input type="submit" value="VIEW" />
			</form>
</body>
</html>