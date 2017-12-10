<html>
  <head>
    <script src="js/validationOld.js"></script>
  </head>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <h1><center>Log In</center></h1>
    <div >
        <form action="login1.asp" method="post">
          <center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Type <select name="type" required>
              <option value="">Select</option>
              <option value="admin">Admin</option>
              <option value="doctor">Doctor</option>
              <option value="patient">Patient</option>
            </select>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Email <input type="email" id="email" name="email" placeholder="Email" onblur="isemail()" required><br>
          Password <input type="password" id="password" name="password" placeholder="password" required><br>
          <!--<a href="passwordRecovery.asp">forgot password ?</a><br>-->
          <input type="Submit" value="Submit">
          <input type="Reset" value="Reset">
        </center>
        </form>
    </div>

  </body>
</html>
