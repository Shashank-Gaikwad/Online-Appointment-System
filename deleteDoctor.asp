<%
  If (Session("account") <> "admin" Or (Session("account") = "admin" and Session("userName")<>"admin@gmail.com")) then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim id, query, query1, a_type, emailQuery, fetchedRecords, doctorEmail
  id=Request.QueryString("q")
	a_type="doctor"
  'response.write("received id is")
  'response.write(id)
  
  emailQuery="select demail from doctor where dno=" & id & ""
  Set fetchedRecords=objConn.Execute(emailQuery)
  Do While(Not fetchedRecords.EOF)
	doctorEmail=fetchedRecords("demail")
	fetchedRecords.MoveNext
  Loop

  query="delete from doctor where dno=" & id & ""
  query1="delete from login where type='" & a_type & "' and email='" & doctorEmail & "'"

  objConn.Execute(query)
  objConn.Execute(query1)
  If Err.Number <> 0 Then
    Response.write(Err.Number)
    response.write("<br>")
    response.write(Err.description)
    response.write("<br>")
    response.write(query)
    response.write("<br><br>")
  else
    response.redirect"manageDoctors.asp"
  End if
  objConn.close
%>
