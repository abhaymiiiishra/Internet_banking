<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
margin:0;
padding:0;
line-height: 1.5em;
}

b{font-size: 110%;}
em{color: red;}

#maincontainer{
width: 840px; /*Width of main container*/
margin: 0 auto; /*Center container on page*/
}

#topsection{
background: #CCCCFF;
height: 90px; /*Height of top section*/
}

#topsection h1{
margin: 0;
padding-top: 15px;
}

#contentwrapper{
float: left;
width: 100%;
background: #3399FF;
height:500px;
}

#contentcolumn{
margin-left: 200px; /*Set left margin to LeftColumnWidth*/
}

#leftcolumn{
float: left;
width: 200px; /*Width of left column*/
height:500px;
margin-left: -840px; /*Set left margin to -(MainContainerWidth)*/
background: #C8FC98;

}

#footer{
clear: left;
width: 100%;
background: black;
color: #FFF;
text-align: center;
padding: 4px 0;
}

#footer a{
color: #FFFF80;
}

.innertube{
margin: 10px; /*Margins for inner DIV inside each column (to provide padding)*/
margin-top: 0;

}
li {display:inline;}
</style>

<script type="text/javascript">
/*** Temporary text filler function. Remove when deploying template. ***/
var gibberish=["This is just some filler text", "Welcome to Dynamic Drive CSS Library", "Demo content nothing to read here"]
function filltext(words){
for (var i=0; i<words; i++)
document.write(gibberish[Math.floor(Math.random()*3)]+" ")
}
</script>
<SCRIPT type="text/javascript"> 
   window.history.forward();
       function noBack() 
       { window.history.forward(); }
       </SCRIPT>
</head>
<body>
<div id="maincontainer">

<div id="topsection"><div class="innertube"><h1><ul>
<li><a href="1st.jsp" rel="gotsubmenu[selected]"><img src="home.jpg" alt="Home" width="70" height="55" border="0" ></a></li>
<li><a href="contact.jsp" rel="gotsubmenu"><img src="contact.jpg" alt="Contact Us" width="70" height="55" border="0" /></a></li>
<li><a href="registration.jsp"><img src="registration.jpg" alt="REGITRATION" width="70" height="55" border="0" /></a></li>
</ul></h1></div></div>

<div id="contentwrapper">
<div id="contentcolumn">
<div class="innertube"><form method="post" action="Controller">
<img src="login.jpg" width="225" height="150" />
<h3><i>Welcome to the world of internet banking...</i></h3>
  <em><h4><font face="Times New Roman" size="+2" color="black">Logins</font></h4></em>
 
 <font face="Times New Roman" size="+1" color="black">
 <button type=submit name="action" value="Personal Banking">Personal Banking</button>
</font></div>
</div>
</div>
<div id="leftcolumn">
<div class="innertube"><em><h4><font face="Times New Roman" size="+2" color="grey">Service Offerings</font></h4></em>
	 <font face="Times New Roman" size="+1" color="black">
	 <ol type="disc">
	<li>Netbanking</li><br>
	<li>Bill Payment</li><br>
	<li>Online Shopping</li><br>
	<li>Mobile Banking Services</li><br>
	<li><a href="services.jsp"><h2>More About Products And Services</h2></a></li><br>
	</ol></div>
</div>
<div id="footer">INTERNET BANKING OF RR</div>
</div>
</body>
</html>