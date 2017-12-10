<%
  If Session("account") <> "doctor" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
	dim query, accountId, accountType, accountEmail, treatmentDescription, treatmentNote,id
	
	accountId=session("userId")
	accountType=session("account")
	accountEmail=session("userName")
	
	treatmentDescription=request.Form("description")
	treatmentNote=request.Form("note")
	id=request.Form("appointmentNumber")
	
	'response.write(treatmentDescription)
	'response.write(treatmentNote)
	'response.write(id)
	
	query="update treatment set description='" & treatmentDescription & "', note='" & treatmentNote & "' where ano=" & id & ""
	objConn.Execute(query)
	If Err.Number <> 0 Then
		Response.write(Err.Number)
		response.write("<br>")
		response.write(Err.description)
		response.write("<br>")
		response.write(query)
		response.write("<br><br>")
	else
		'response.redirect"treatedPatients.asp"
	End if
	objConn.close
%>