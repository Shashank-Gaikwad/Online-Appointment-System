<%
  If Session("account") <> "doctor" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, query1, accountId, accountType, accountEmail, doctorPassword, confirmPassword

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  doctorPassword=request.Form("password")
  confirmPassword=request.Form("confirmPassword")

  if StrComp(doctorPassword,confirmPassword,0)=0 then
    query="update doctor set password='" & doctorPassword & "' where dno=" & accountId & " and demail='" & accountEmail & "'"
	query1="update login set password='" & doctorPassword & "' where email='" & accountEmail & "'"
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
      response.redirect"resetDoctor.asp"
    End if
    objConn.close
  else
    response.redirect"index2.asp"
  End if
%>
