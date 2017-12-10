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
    <center><h1>Treatment Details</h1></center>
    <%
      dim query,q,id, fetchedRecords, accountId, accountType, accountEmail

      accountId=session("userId")
      accountType=session("account")
      accountEmail=session("userName")

      query="select dname,adate,description,note from patient,doctor,appointment,treatment where patient.pno=appointment.pno and doctor.dno=appointment.dno and appointment.ano=treatment.ano and patient.pno=" & accountId & ""
      Set fetchedRecords=objConn.Execute(query)
      response.write"<table>"
        response.write"<thead>"
          response.write"<tr>"
            response.write"<th>Doctor Name</th>"
            response.write"<th>Appointment Date</th>"
            response.write"<th>Treatment Description</th>"
            response.write"<th>Note</th>"
          response.write"</tr>"
        response.write"</thead>"
        response.write"<tbody>"
          Do While(Not fetchedRecords.EOF)
            response.write"<tr>"
              response.write"<td>" & fetchedRecords("dname") & "</td>"
              response.write"<td>" & fetchedRecords("adate") & "</td>"
              response.write"<td>" & fetchedRecords("description") & "</td>"
              response.write"<td>" & fetchedRecords("note") & "</td>"
            response.write"</tr>"
            fetchedRecords.MoveNext
          Loop
        response.write"</tbody>"
      response.write"</table>"
    %>
  </body>
</html>
