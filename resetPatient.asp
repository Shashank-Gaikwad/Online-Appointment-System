<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<html>
  <head>
    <script src="js/patientValidate.js"></script>
  </head>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="patientHeader.asp"-->
      <center><h1>Reset Password</h1></center>
      <div>
          <form action="resetPatient1.asp" name="Form" method="post" onsubmit="return validatePassword()">
            <center>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            New Password <input type="password" id="password" name="password" placeholder="Password"><br>
            Confirm Password <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password"><br>
            <input type="submit" value="Submit">
            <input type="reset" value="Clear">
          </center>
          </form>
      </div>

  </body>
<html>
