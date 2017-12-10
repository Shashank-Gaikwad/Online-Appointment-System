<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, query1, accountId, accountType, accountEmail, patientPassword, confirmPassword

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  patientPassword=request.Form("password")
  confirmPassword=request.Form("confirmPassword")

  if StrComp(patientPassword,confirmPassword,0)=0 then
    query="update patient set password='" & patientPassword & "' where pno=" & accountId & " and pemail='" & accountEmail & "'"
	query1="update login set password='" & patientPassword & "' where email='" & accountEmail & "'"
    objConn.Execute(query)
	objConn.Execute(query1)
    if Err.Number <> 0 Then
      Response.write(Err.Number)
      response.write("<br>")
      response.write(Err.description)
      response.write("<br>")
      response.write(query)
      response.write("<br><br>")
    else
      response.redirect"resetPatient.asp"
    End if
    objConn.close
  else
    response.redirect"index2.asp"
  End if
%>
