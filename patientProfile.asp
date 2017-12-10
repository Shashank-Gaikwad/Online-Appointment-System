<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, accountId, accountType, accountEmail, fetchedRecords, accountName,accountGender,accountBirthdate,accountAddress,accountMobile

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  'response.write(accountId)
  'response.write(accountType)
  'response.write(accountEmail)

  query="select * from patient where pno=" & accountId & " and pemail='" & accountEmail & "'"
  Set fetchedRecords=objConn.Execute(query)
  Do While(Not fetchedRecords.EOF)
    accountName=fetchedRecords("pname")
    accountGender=fetchedRecords("pgender")
    accountBirthdate=fetchedRecords("pbirthdate")
    accountAddress=fetchedRecords("paddress")
    accountMobile=fetchedRecords("pmobile")
    fetchedRecords.MoveNext
  Loop
%>

<html>
  <head>
    <script src="js/patientValidate.js"></script>
  </head>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="patientHeader.asp"-->
      <center><h1>Update Patient</h1></center>
    <div>
      <center>
      <%

        response.write"<form action='updatePatient.asp' name='Form' method='post' onsubmit='return validateInfo()'>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Name <input type='text' id='name' name='name' placeholder='Full Name' value='" & accountName & "' required><br>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Gender"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
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
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Birth Date <input type='date' id='birthdate' name='birthdate' placeholder='Birth Date' value='" & accountBirthdate & "' disabled><br>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Address <input type='text' name='address' placeholder='Address' value='" & accountAddress & "' required><br>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Mobile Number <input type='text' id='mobile' name='mobile' placeholder='Mobile' maxlength='10' value='" & accountMobile & "' required><br>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"Email <input type='email' id='email' name='email' placeholder='Email' value='" & accountEmail & "' disabled><br>"
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
