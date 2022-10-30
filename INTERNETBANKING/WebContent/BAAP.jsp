<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
<script src="mouseovertabs.js" type="text/javascript">

</script>
 <style type="text/css">

	.toolbox{
	width: 25em;
	float: left;
	height:50em;
	margin:0em;
	background-color:"#E6E6FA";
	list-style-type:none;
	}
	.toolheader{
	width: 25em;
	float: left;
	height:50em;
	background-color:"#E6E6FA";
	margin:0em;
	list-style-type:none;
	}
	.toolm{
	width: 50em;
	float: left;
	height:5em;
	background-color:"#E6E6FA";
	margin:0em;
	list-style-type:none;
	}
	li {display:inline;}
	</style>
</head>
<body bgcolor="#E6E6FA">
<div class="toolm" >
<ul>
<li><a href="Controller?action=home" rel="gotsubmenu[selected]"><img src="home.jpg" alt="Home" width="70" height="55" border="0" ></a></li>
<li><a href="Controller?action=contact" rel="gotsubmenu"><img src="contact.jpg" alt="Contact Us" width="70" height="55" border="0" /></a></li>
<li><a href="Controller?action=registration"><img src="registration.jpg" alt="REGITRATION" width="70" height="55" border="0" /></a></li>
</ul>
<div class="toolbox">
	<img src="intban.jpg" />
	 <em><h4><font face="Times New Roman" size="+2" color="grey">Service Offerings</font></h4></em>
	 <font face="Times New Roman" size="+1" color="black">
	 <ol type="disc">
	<li><a href="">Corporate Banking</a></li><br>
	<li><a href="">Netbanking</a></li><br>
	<li><a href="">Bill Payment</a></li><br>
	<li><a href="">Online Shopping</a></li><br>
	<li><a href="">Mobile Banking Services</a></li><br>
	</ol>
	</font>
	<img src="online.jpg" />
</div>

<div class="toolheader">
<form method="post" action="Controller">
<img src="login.jpg" width="225" height="150" />
  <em><h4><font face="Times New Roman" size="+2" color="black">Logins</font></h4></em>
 
 <font face="Times New Roman" size="+1" color="black">
 <button type=submit name="action" value="Personal Banking">Personal Banking</button>
 <p><button type=submit>Corporate Banking</button>
</font>
<h3><i>Welcome to the world of internet banking...</i></h3>
</form>	
</div>
</div>

<script type="text/javascript">
//mouseovertabsmenu.init("tabs_container_id", "submenu_container_id", "bool_hidecontentsmouseout")
mouseovertabsmenu.init("mytabsmenu", "mysubmenuarea", true)
</script>

</body>
</html>