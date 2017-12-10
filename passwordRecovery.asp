<html>
  <head>

  </head>
  <body>
      <!--#include file="header2.asp"-->
    <h1><center>Password Recovery</center></h1>
    <div>
        <form action="passwordRecovery1.asp" method="post">
          <center>
          Enter Last 4 Digits Of Your Mobile Number<br>
          <input type="text" id="digit" name="digit" placeholder="123456****" pattern="[0-9]{4}" maxlength="4" required><br>
          <input type="submit" value="Submit">
          <input type="reset" value="Clear">
        </center>
        </form>
    </div>
  </body>
</html>
