<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <SCRIPT type="text/javascript" src="rightclick.js"></SCRIPT>
  <title> New Document </title>
<script type="text/javascript">
function validateForm()
{
	var x=document.forms["login"]["logid"].value
	if (x==null || x=="")
 	 {
 		 alert("LOGIN ID must be filled out");
 		 
 		 return false;
  	}
  	x=document.forms["login"]["pass"].value
  	if (x==null || x=="")
 	 {
 		 alert("PASSWORD must be filled out");
 		 return false;
  	}
  	return true;
}
function validateUser()
{
	var x=document.forms["login"]["logid"].value
	if (x==null || x=="")
 	 {
 		 alert("LOGIN ID must be filled out");
 		 
 		 return false;
  	}
  	
  	return true;
}
</script>  





  <SCRIPT type="text/javascript" src="vkboard.js"></SCRIPT>
  <SCRIPT>

   // This example shows the very basic installation
   // of the Virtual Keyboard.
   // 
   // 'keyb_change' and 'keyb_callback' functions
   // do all the job here.

   var opened = false, vkb = null, text = null;

   function keyb_change()
   {
     document.getElementById("switch").innerHTML = (opened ? "Show keyboard" : "Hide keyboard");
     opened = !opened;

     if(opened && !vkb)
     {
       // Note: all parameters, starting with 3rd, in the following
       // expression are equal to the default parameters for the
       // VKeyboard object. The only exception is 15th parameter
       // (flash switch), which is false by default.

       vkb = new VKeyboard("keyboard",    // container's id
                           keyb_callback, // reference to the callback function
                           true,          // create the arrow keys or not? (this and the following params are optional)
                           true,          // create up and down arrow keys? 
                           false,         // reserved
                           true,          // create the numpad or not?
                           "",            // font name ("" == system default)
                           "14px",        // font size in px
                           "#000",        // font color
                           "#F00",        // font color for the dead keys
                           "#FFF",        // keyboard base background color
                           "#FFF",        // keys' background color
                           "#DDD",        // background color of switched/selected item
                           "#777",        // border color
                           "#CCC",        // border/font color of "inactive" key (key with no value/disabled)
                           "#FFF",        // background color of "inactive" key (key with no value/disabled)
                           "#F77",        // border color of the language selector's cell
                           true,          // show key flash on click? (false by default)
                           "#CC3300",     // font color during flash
                           "#FF9966",     // key background color during flash
                           "#CC3300",     // key border color during flash
                           false,         // embed VKeyboard into the page?
                           true,          // use 1-pixel gap between the keys?
                           0);            // index(0-based) of the initial layout
     }
     else
       vkb.Show(opened);

     text = document.getElementById("textfield");
     text.focus();

     if(document.attachEvent)
       text.attachEvent("onblur", backFocus);
   }

   function backFocus()
   {
     if(opened)
     {
       var l = text.value.length;

       setRange(text, l, l);

       text.focus();
     }
   }

   // Callback function:
   function keyb_callback(ch)
   {
     var val = text.value;

     switch(ch)
     {
       case "BackSpace":
         var min = (val.charCodeAt(val.length - 1) == 10) ? 2 : 1;
         text.value = val.substr(0, val.length - min);
         break;

       case "Enter":
         text.value += "\n";
         break;

       default:
         text.value += ch;
     }
   }

   function setRange(ctrl, start, end)
   {
     if(ctrl.setSelectionRange) // Standard way (Mozilla, Opera, ...)
     {
       ctrl.setSelectionRange(start, end);
     }
     else // MS IE
     {
       var range;

       try
       {
         range = ctrl.createTextRange();
       }
       catch(e)
       {
         try
         {
           range = document.body.createTextRange();
           range.moveToElementText(ctrl);
         }
         catch(e)
         {
           range = null;
         }
       }

       if(!range) return;

       range.collapse(true);
       range.moveStart("character", start);
       range.moveEnd("character", end - start);
       range.select();
     }
   }

</SCRIPT>
 </head>
 <body  background="1.jpg">
 <MARQUEE>
 <span style="color:green"><i><H1>LOGIN PAGE OF BANK OF RR</H1></i></span>

</MARQUEE>
 
<center>
  <form method="post" action="Controller" name="login" onsubmit="return validateForm()" >
  
  <br>  <br>  <br>  <br>  <br>  <br>  
  <br> 
 
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
  				<tr><td ><h1>LOG-ON DETAILS</h1></td></tr>
  					<tr><table  border="1">
					 <tr style="height:50px">
                          <td  ><strong>LOGIN ID* </strong></td>
                          <td ><input name=logid  type="text" id="username" value="" tabindex="1" size="20" maxlength="20" ></td>
                     </tr>
                        <tr style="height:50px">
                          <td><strong>PASSWORD* </strong></td>
                          <td ><input type=password id="textfield" name=pass tabindex="2" title="password" size="20"></td> 
                        </tr>
                        
					</table></tr>
					
					<%if((String)request.getAttribute("wrong")!=null) 
                        {
                        %>
                        <script type="text/javascript">alert("LOGIN ID OR PASSWORD IS WRONG")</script>
						
						<%} %>
  
  </table>
	<A href="javascript:keyb_change()" onclick="javascript:blur()" id="switch" style="font-family:Tahoma;font-size:14px;text-decoration:none;border-bottom: 1px dashed #0000F0;color:#0000F0">Show keyboard</A>
	<DIV id="keyboard"></DIV>
	<input type=submit name="action" value=LOGIN >
	<input type=reset name=RESET ><br>
	<a href="Controller?action=forget" onClick="return validateUser()">FORGOT PASSWORD</a>
  </form>
   </center>
 </body>
</html>