<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/header2.css">
  <link rel="stylesheet" type="text/css" href="css/form.css">
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="navbar">
<ul>
  <li><a href="index2.asp">Hospital Appointment System</a></li>
  <!--<li style="float:right"><a href="selectAccountType.asp">Sign Up</a></li>
  <li style="float:right"><a href="login.asp">Log In</a></li>-->
  <%
  If Session("account") <> "" then
    response.write"<li style='float:right'><a href='logout.asp'>Log Out</a></li>"
  Else
    response.write"<li style='float:right'><a href='selectAccountType.asp'>Sign Up</a></li>"
    response.write"<li style='float:right'><a href='login.asp'>Log In</a></li>"
  End if
  %>
  <li style="float:right"><a href="about.asp">About Us</a></li>
  <li style="float:right"><a href="index2.asp">Home</a></li>
  <%
	If Session("account") <> "" then
		response.write"<div id=login_info style='text-align: center; color:white;'>"&"Logged in as"&" "& session("userName") & "</div>"
	End if
%>
</ul>
</div>
</body>
</html>

