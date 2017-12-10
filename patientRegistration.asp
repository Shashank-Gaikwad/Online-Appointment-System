<html>
  <head>
    <script src="js/patientValidate.js"></script>
  </head>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->

    <center><h1>Patient Registration</h1></center>
    <div>
      <center>
    <form action="patientRegistration1.asp" name="Form" method="post" onsubmit="return validateRegistration()">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Name <input type="text" id="name" name="name" placeholder="Full Name"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Gender
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" value="male" required>Male
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" value="female">Female<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Birth Date <input type="date" id="birthdate" name="birthdate" placeholder="Birth Date"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Address <input type="text" name="address" placeholder="Address"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;
        Mobile Number <input type="text" id="mobile" name="mobile" placeholder="Mobile" maxlength="10"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Email <input type="email" id="email" name="email" placeholder="Email"><br>
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
