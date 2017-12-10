<html>
  <head>
    <script src="js/doctorValidate.js"></script>
  </head>
  <body>
    <!--<br><br>-->
  <!--#include file="header2.asp"-->
  <center><h1>Doctor Registration</h1></center>
<div>
  <center>
<form action="doctorRegistration1.asp" name="Form" method="post" onsubmit="return validateRegistration()">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    Name <input type="text" id="name" name="name" placeholder="Full Name"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Gender
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" name="gender" value="male" required>Male
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" name="gender" value="female">Female<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Specialization <input type="text" id="specialization" name="specialization" placeholder="Specialization"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Address <input type="text" name="address" placeholder="Address"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;
    Mobile Number <input type="text" id="mobile" name="mobile" placeholder="Mobile" maxlength="10"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Email <input type="email" id="email" name="email" placeholder="Email"><br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;
    Start Time  Type <select name="start">
        <option value="9.00">9.00 AM</option>
        <option value="10.00">10.00 AM</option>
        <option value="10.00">11.00 AM</option>
      </select><br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    End Time  Type <select name="end">
        <option value="17.00">5.00 PM</option>
        <option value="18.00">6.00 PM</option>
        <option value="19.00">7.00 PM</option>
      </select><br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Password <input type="password" id="password" name="password" placeholder="Password"><br>
      Confirm Password <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password"><br>
  <input type="submit" value="Submit">
  <input type="reset" value="Reset">
  <br>
</center>
</form>
</div>

  </body>
</html>
