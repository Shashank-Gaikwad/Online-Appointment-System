<%
  If (Session("account") <> "admin" Or (Session("account") = "admin" and Session("userName")<>"admin@gmail.com")) then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim id, query, query1, a_type, emailQuery, fetchedRecords, patientEmail
  id=Request.QueryString("q")
	a_type="patient"
  'response.write("received id is")
  'response.write(id)
  
  emailQuery="select pemail from patient where pno=" & id & ""
  Set fetchedRecords=objConn.Execute(emailQuery)
  Do While(Not fetchedRecords.EOF)
	patientEmail=fetchedRecords("pemail")
	fetchedRecords.MoveNext
  Loop

  query="delete from patient where pno=" & id & ""
  query1="delete from login where type='" & a_type & "' and email='" & patientEmail & "'"

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
    response.redirect"managePatients.asp"
  End if
  objConn.close
%>
