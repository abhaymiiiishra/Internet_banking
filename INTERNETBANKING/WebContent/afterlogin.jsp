<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.util.*" import="p.*"%>
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
background: #EAEAEA;
height: 200px; /*Height of top section*/
}

#topsection h1{
margin: 0;
padding-top: 15px;
}

#contentwrapper{
float: left;
width: 100%;
}

#contentcolumn{
margin-left: 200px; /*Set left margin to LeftColumnWidth*/
}

#leftcolumn{
float: left;
width: 200px; /*Width of left column*/
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

</style>

<script type="text/javascript">
/*** Temporary text filler function. Remove when deploying template. ***/
var gibberish=["This is just some filler text", "Welcome to Dynamic Drive CSS Library", "Demo content nothing to read here"]
function filltext(words){
for (var i=0; i<words; i++)
document.write(gibberish[Math.floor(Math.random()*3)]+" ")
}
</script>




<SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script type="text/javascript" src="ddaccordion.js"></script>
<script type="text/javascript">
ddaccordion.init({
	headerclass: "expandable", //Shared CSS class name of headers group that are expandable
	contentclass: "categoryitems", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "openheader"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["prefix", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})
</script>

<style type="text/css">
.arrowlistmenu{
width: 180px; /*width of accordion menu*/
}

.arrowlistmenu .menuheader{ /*CSS class for menu headers in general (expanding or not!)*/
font: bold 14px Arial;
color: white;
background: black url(titlebar.png) repeat-x center left;
margin-bottom: 10px; /*bottom spacing between header and rest of content*/
text-transform: uppercase;
padding: 4px 0 4px 10px; /*header text is indented 10px*/
cursor: hand;
cursor: pointer;
}

.arrowlistmenu .openheader{ /*CSS class to apply to expandable header when it's expanded*/
background-image: url(titlebar-active.png);
}

.arrowlistmenu ul{ /*CSS for UL of each sub menu*/
list-style-type: none;
margin: 0;
padding: 0;
margin-bottom: 8px; /*bottom spacing between each UL and rest of content*/
}

.arrowlistmenu ul li{
padding-bottom: 2px; /*bottom spacing between menu items*/
}

.arrowlistmenu ul li a{
color: #A70303;
background: url(arrowbullet.png) no-repeat center left; /*custom bullet list image*/
display: block;
padding: 2px 0;
padding-left: 19px; /*link text is indented 19px*/
text-decoration: none;
font-weight: bold;
border-bottom: 1px solid #dadada;
font-size: 90%;
}

.arrowlistmenu ul li a:visited{
color: #A70303;
}

.arrowlistmenu ul li a:hover{ /*hover state CSS*/
color: #A70303;
background-color: #F3F3F3;
}
</style>
<SCRIPT type="text/javascript">    
window.history.forward();    
function noBack()
 { window.history.forward(); }
 </SCRIPT>
</head>
<body>
<form method="post" action="Controller">
<div id="maincontainer">
<div id="topsection"><div class="innertube"><jsp:include page="include.jsp" flush="true"/></div></div>
<div id="contentwrapper">
<div id="contentcolumn">
<div class="innertube">
<br>
<br>
<br><b>
<font face="Times New Roman" size="+1" color="#292929"><p><h3><I>RR</I> or any of its representatives never sends you email/SMS or calls you over phone to get your personal information, password or one time SMS (high security) password. Any such e-mail/SMS or phone call is an attempt to fraudulently withdraw money from your account through Internet Banking. Never respond to such email/SMS or phone call. Change your passwords immediately if you have accidentally revealed your credentials.</h3></font>
<%
	PersonInfo per=null;
	ArrayList person=(ArrayList)session.getAttribute("ATT");
	per=(PersonInfo)person.get(0);
%>
 <table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
			 <td width="200" align="left" valign="top"><h3>A/C no:<%= per.getcac() %></h3></td>
			  <td width="200" align="left" valign="top"><h3>Branch:<%= per.getbcode() %></h3></td>
</table>
</div>
</div>
</div>
<div id="leftcolumn">
<div class="innertube"><br>
<br>
<br><b>
<div class="arrowlistmenu">
<h3 class="menuheader expandable">RR MENU</h3>
<ul class="categoryitems">
<li><a href="afterlogin.jsp">HOME</a></li>
<li><a href="afterenquery.jsp">ACCOUNT STATEMENT</a></li>
<li><a href="ministat.jsp">MINI STATEMENT</a></li>
<li><a href="TRANSFERMONEY.jsp">TRANSFER MONEY</a></li>
<li><a href="loan.jsp">LOANS</a></li>
<li><a href="profile.jsp">PROFILE</a></li>
<li><a href="bal.jsp">BALANCE</a></li>
<li><a href="beneficiery.jsp">BENEFICIERY</a></li>
<li><a href="transbill.jsp">BILL PAY</a></li>
<li><a href="newregistration.jsp">REGISTRATION NEW ACCOUNT</a></li>
</ul>
<h3 class="menuheader expandable">IP ADDRESS</h3>
<ul class="categoryitems">
<li>
<script language="JavaScript">
	VIH_BackColor = "palegreen";
	VIH_ForeColor = "navy";
	VIH_FontPix = "16";
	VIH_DisplayFormat = "You are visiting from:<br>IP Address: %%IP%%<br>Host: %%HOST%%";
	VIH_DisplayOnPage = "yes";
	</script>
	<script language="JavaScript" src="http://scripts.hashemian.com/js/visitorIPHOST.js.php"></script>
</li>
</ul>
</div>
</div>
</div>
 </form>
</body>
</html>