<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function validateName()
{
var x=document.forms["bill"]["PayAmount"].value
	if (x==null || x=="")
 	 {
 		 alert("ENTER THE AMOUNT");
 		 
 		 return false;
  	}
  	if(parseFloat(x) <= 0)
	{
		alert("Amount Should be greater than 0");
		return false;
	}

  	if(isNaN(x))
 	{
 		alert("Enter the valid Amount");
		 return false;
 	}  	
  	return true;
}

</script>  
</head>
<body>
<jsp:include page="include.jsp" flush="true"/>
 <form method="post" action="Controller" name="bill">
 <span style="background-color: #FFCCCC">  <em><h3><font face="Times New Roman" size="+2" color="#000033"><center>BILL PAYMENTS/TRANSFER</center></font></h3></em></span>
   <img src="bill_pay.jpg"  width="600" height="150" border="0" />

   <p>Using the bill payment you can view and Pay Various bills online, directly from your account. You can pay telephone,electricity, insurance,credit cards and other bills from the comfort of your house or office, 24 hours a day, 365 days a year.</p>
 
		<img src="transbill.jpg"  width="300" height="150" border="0" />	
			<form action="form_action.asp" align ="center">
			<h3>Select the company you want to pay the bill for</h3><select>
			<option SELECTED>Reliance Comm.</option>
			<option>TATA Indicom</option>
			</select><br>
	<br>
			Enter the payable amount: <input type="text" name="PayAmount" /><br />
			<input type="submit" value="PAY" name="action" onClick="return validateName()"/>
			<input type="reset" value="RESET" />
</form>
</body>
</html>