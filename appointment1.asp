<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim query, doctorId, patientSymptoms, appointmentDate, appointmentStart, appointmentEnd, appointmentStatus, accountId, accountType, accountEmail

  accountId=session("userId")
  accountType=session("account")
  accountEmail=session("userName")

  doctorId=request.Form("name")
  patientSymptoms=request.Form("symptoms")
  appointmentDate=request.Form("date")
  appointmentStart=request.Form("start")
  appointmentEnd=appointmentStart+1.00
  appointmentEnd=appointmentEnd & ".00"
  appointmentStatus="confirmed"

  response.write(doctorId)
  response.write(patientSymptoms)
  response.write(appointmentDate)
  response.write(appointmentStart)
  response.write(appointmentEnd)

  query="insert into appointment(dno,pno,symptom,astatus,adate,start_time,end_time) values(" & doctorId & "," & accountId & ",'" & patientSymptoms & "','" & appointmentStatus & "','" & appointmentDate & "','" & appointmentStart & "','" & appointmentEnd & "')"
  objConn.Execute(query)
  if Err.Number <> 0 Then
    Response.write(Err.Number)
    response.write("<br>")
    response.write(Err.description)
    response.write("<br>")
    response.write(query)
    response.write("<br><br>")
  else
    response.redirect"requestedAppointments.asp"
  End if
  objConn.close
%>
