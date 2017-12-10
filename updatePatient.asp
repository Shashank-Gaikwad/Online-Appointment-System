<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, accountId, accountType, accountEmail,accountName,accountGender,accountBirthdate,accountAddress,accountMobile

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  accountName=request.Form("name")
  accountGender=request.Form("gender")
  accountBirthdate=request.Form("birthdate")
  accountAddress=request.Form("address")
  accountMobile=request.Form("mobile")

  'response.write(accountId)
  'response.write(accountType)
  'response.write(accountEmail)

  query="update patient set pname='" & accountName & "', pgender='" & accountGender & "', paddress='" & accountAddress & "', pmobile='" & accountMobile & "' where pno=" & accountId & " and pemail='" & accountEmail & "'"
  objConn.Execute(query)
  If Err.Number <> 0 Then
    Response.write(Err.Number)
    response.write("<br>")
    response.write(Err.description)
    response.write("<br>")
    response.write(query)
    response.write("<br><br>")
  else
    response.redirect"patientProfile.asp"
  End if
  objConn.close
%>
