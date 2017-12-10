<%
  If Session("account") <> "doctor" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, accountId, accountType, accountEmail,accountName,accountGender,accountSpecialization,accountAddress,accountMobile,accountStart,accountEnd

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  accountName=request.Form("name")
  accountGender=request.Form("gender")
  accountSpecialization=request.Form("specialization")
  accountAddress=request.Form("address")
  accountMobile=request.Form("mobile")
  accountStart=request.Form("start")
  accountEnd=request.Form("end")

  'response.write(accountId)
  'response.write(accountType)
  'response.write(accountEmail)

  query="update doctor set dname='" & accountName & "', dgender='" & accountGender & "', dspecialization='" & accountSpecialization & "', daddress='" & accountAddress & "', dmobile='" & accountMobile & "', start_time='" & accountStart & "', end_time='" & accountEnd & "' where dno=" & accountId & " and demail='" & accountEmail & "'"
  objConn.Execute(query)
  If Err.Number <> 0 Then
    Response.write(Err.Number)
    response.write("<br>")
    response.write(Err.description)
    response.write("<br>")
    response.write(query)
    response.write("<br><br>")
  else
    response.redirect"doctorProfile.asp"
  End if
  objConn.close
%>
