<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<html>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="patientHeader.asp"-->
    <!--#include file="databaseConnection.asp"-->
    <center><h1>Requested Appointments</h1></center>
    <%
    dim query,q,id, fetchedRecords, accountId, accountType, accountEmail

    accountId=session("userId")
    accountType=session("account")
    accountEmail=session("userName")

    query="select ano,dname,adate,appointment.start_time from patient,doctor,appointment where patient.pno=appointment.pno and doctor.dno=appointment.dno and patient.pno=" & accountId & " and adate>=DATE()"
    Set fetchedRecords=objConn.Execute(query)
      response.write"<table>"
        response.write"<thead>"
          response.write"<tr>"
            response.write"<th>Doctor Name</th>"
            response.write"<th>Appointment Date</th>"
            response.write"<th>Appointment Time</th>"
            response.write"<th>Cancel Appointment</th>"
          response.write"</tr>"
        response.write"</thead>"
        response.write"<tbody>"
          Do While(Not fetchedRecords.EOF)
            response.write"<tr>"
              id=fetchedRecords("ano")
              response.write"<td>" & fetchedRecords("dname") & "</td>"
              response.write"<td>" & fetchedRecords("adate") & "</td>"
              response.write"<td>" & fetchedRecords("start_time") & "</td>"
              Response.Write"<td>" & "<input type='button' value='Cancel' onclick=window.location=""cancelAppointment.asp?q=" & id &""" /> " & "</td>"
            response.write"</tr>"
            fetchedRecords.MoveNext
          Loop
        response.write"</tbody>"
      response.write"</table>"
    %>
  </body>
</html>
