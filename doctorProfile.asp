<%
  If Session("account") <> "doctor" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, accountId, accountType, accountEmail, fetchedRecords, accountName,accountGender,accountSpecialization,accountAddress,accountMobile,accountStart,accountEnd

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  'response.write(accountId)
  'response.write(accountType)
  'response.write(accountEmail)

  query="select * from doctor where dno=" & accountId & " and demail='" & accountEmail & "'"
  Set fetchedRecords=objConn.Execute(query)
  Do While(Not fetchedRecords.EOF)
    accountName=fetchedRecords("dname")
    accountGender=fetchedRecords("dgender")
    accountSpecialization=fetchedRecords("dspecialization")
    accountAddress=fetchedRecords("daddress")
    accountMobile=fetchedRecords("dmobile")
    accountStart=fetchedRecords("start_time")
    accountEnd=fetchedRecords("end_time")
    fetchedRecords.MoveNext
  Loop
%>

<html>
  <head>
    <script src="js/doctorValidate.js"></script>
  </head>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="doctorHeader.asp"-->
    <center><h1>Update Doctor</h1></center>
  <div>
    <center>
    <%

      response.write"<form action='updateDoctor.asp' name='Form' method='post' onsubmit='return validateInfo()'>"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Name <input type='text' id='name' name='name' placeholder='Full Name' value='" & accountName & "' required><br>"

      response.write"Gender"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      If accountGender="male" then
        response.write"<input type='radio' name='gender' value='male' checked>Male"
      Else
        response.write"<input type='radio' name='gender' value='male'>Male"
      End if
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      If accountGender="female" then
        response.write"<input type='radio' name='gender' value='female' checked>Female"
      Else
        response.write"<input type='radio' name='gender' value='female'>Female"
      End if
      response.write"<br>"

      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Specialization <input type='text' id='specialization' name='specialization' placeholder='Specialization' value='" & accountSpecialization & "' required><br>"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Address <input type='text' name='address' placeholder='Address' value='"& accountAddress & "' required><br>"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Mobile Number <input type='text' id='mobile' name='mobile' placeholder='Mobile' maxlength='10' value='" & accountMobile & "' required><br>"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Email <input type='email' id='email' name='email' placeholder='Email' value='" & accountEmail & "' disabled><br><br>"


      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"Start Time <select name='start'>"
      If accountStart="9:00:00 AM" then
        response.write"<option value='9.00' selected>9.00 AM</option>"
      Else
        response.write"<option value='9.00'>9.00 AM</option>"
      End if
      If accountStart="10:00:00 AM" then
        response.write"<option value='10.00' selected>10.00 AM</option>"
      Else
        response.write"<option value='10.00'>10.00 AM</option>"
      End if
      If accountStart="11:00:00 AM" then
        response.write"<option value='11.00' selected>11.00 AM</option>"
      Else
        response.write"<option value='11.00'>11.00 AM</option>"
      End if
      response.write"</select>"
      response.write"<br><br>"

      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"

      response.write"End Time <select name='end'>"
      If accountEnd="5:00:00 PM" then
        response.write"<option value='17.00' selected>5.00 PM</option>"
      Else
        response.write"<option value='17.00'>5.00 PM</option>"
      End if
      If accountEnd="6:00:00 PM" then
        response.write"<option value='18.00' selected>6.00 PM</option>"
      Else
        response.write"<option value='18.00'>6.00 PM</option>"
      End if
      If accountEnd="7:00:00 PM" then
        response.write"<option value='19.00' selected>7.00 PM</option>"
      Else
        response.write"<option value='19.00'>7.00 PM</option>"
      End if
      response.write"</select>"
      response.write"<br>"
      response.write"<input type='submit' value='Submit'>"
      response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
      response.write"<input type='reset' value='Reset'>"
      response.write"<br>"
      response.write"</form>"
    %>

  </center>
</div>

  </body>
</html>
