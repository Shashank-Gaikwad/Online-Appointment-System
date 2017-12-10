<html>
  <head>

  </head>
  <body>
      <!--#include file="header2.asp"-->
    <h1><center>Reset Password</center></h1>
    <div>
        <form action="resetPassword.asp" method="post">
          <center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          New Password <input type="password" id="password" name="password" placeholder="Password" required><br>
          Confirm Password <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required><br>
          <input type="submit" value="Submit">
          <input type="reset" value="Clear">
        </center>
        </form>
    </div>
  </body>
</html>
