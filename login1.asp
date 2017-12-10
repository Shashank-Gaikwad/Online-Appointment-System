<html>
  <head>
    <title>Appointment System</title>
  </head>
  <body>
    <!--#include file="databaseConnection.asp"-->
    <%
      dim accountType, accountEmail, accountPassword, checkQuery, fetchedrecords, count, id
      accountType=request.Form("type")
      accountEmail=request.Form("email")
      accountPassword=request.Form("password")

      'response.write(accountType)
      'response.write(accountEmail)
      'response.write(accountPassword)

      If StrComp (accountType,"admin",0)=0 Then
        If (StrComp(accountEmail,"admin@gmail.com",0)=0 and StrComp(accountPassword,"admin",0)=0) Then
          session("account")="admin"
          session("userName")=accountEmail
          response.redirect"managePatients.asp"
        Else
          response.redirect"redirectHome.asp"
        End If
      ElseIf StrComp (accountType,"doctor",0)=0 Then
        count=0
        checkQuery="select * from doctor where demail='" & accountEmail & "' and password='" & accountPassword & "'"
        Set fetchedRecords=objConn.Execute(checkQuery)
        Do While(Not fetchedRecords.EOF)
          id=fetchedRecords("dno")
          count=count+1
          fetchedRecords.MoveNext
        Loop
        if count > 0 then
          session("userId")=id
          session("account")="doctor"
          session("userName")=accountEmail
          response.redirect"doctorProfile.asp"
        Else
          response.redirect"redirectHome.asp"
        End if
      ElseIf StrComp (accountType,"patient",0)=0 Then
        count=0
        checkQuery="select * from patient where pemail='" & accountEmail & "' and password='" & accountPassword & "'"
        Set fetchedRecords=objConn.Execute(checkQuery)
        Do While(Not fetchedRecords.EOF)
          id=fetchedRecords("pno")
          count=count+1
          fetchedRecords.MoveNext
        Loop
        if count > 0 then
          session("userId")=id
          session("account")="patient"
          session("userName")=accountEmail
          response.redirect"patientProfile.asp"
        Else
          response.redirect"redirectHome.asp"
        End if
      End If
    %>
  </body>
</html>
