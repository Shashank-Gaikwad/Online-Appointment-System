<%
  If Session("account") <> "doctor" then
    response.redirect"index2.asp"
  End if
%>

<html>

  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="doctorHeader.asp"-->
    <!--#include file="databaseConnection.asp"-->
    <center><h1>Today's Schedule</h1></center>
    <%
      dim query, fetchedRecords, accountId, accountType, accountEmail

      accountId=session("userId")
      accountType=session("account")
      accountEmail=session("userName")

      query="select adate,appointment.start_time,pname from patient,doctor,appointment where patient.pno=appointment.pno and doctor.dno=appointment.dno and doctor.dno=" & accountId & " and adate=DATE() order by adate"
      Set fetchedRecords=objConn.Execute(query)
      response.write"<table>"
        response.write"<thead>"
          response.write"<tr>"
            response.write"<th>Appointment Date</th>"
            response.write"<th>Appointment Time</th>"
            response.write"<th>Patient Name</th>"
          response.write"</tr>"
        response.write"</thead>"
        response.write"<tbody>"
          Do While(Not fetchedRecords.EOF)
            response.write"<tr>"
              response.write"<td>" & fetchedRecords("adate") & "</td>"
              response.write"<td>" & fetchedRecords("start_time") & "</td>"
              response.write"<td>" & fetchedRecords("pname") & "</td>"
            response.write"</tr>"
            fetchedRecords.MoveNext
          Loop
        response.write"</tbody>"
      response.write"</table>"
    %>
  </body>
</html>
