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
    <center><h1>Treated Patients</h1></center>
    <%
      dim query,q,id, fetchedRecords, accountId, accountType, accountEmail

      accountId=session("userId")
      accountType=session("account")
      accountEmail=session("userName")

      query="select ano,patient.pno,pname,adate from patient,doctor,appointment where patient.pno=appointment.pno and doctor.dno=appointment.dno and doctor.dno=" & accountId & ""
      Set fetchedRecords=objConn.Execute(query)
      response.write"<table>"
        response.write"<thead>"
          response.write"<tr>"
            response.write"<th>Patient Name</th>"
            response.write"<th>Appointment Date</th>"
            response.write"<th>View/Upload Treatment</th>"
            'response.write"<th>View/Upload Reports</th>"
          response.write"</tr>"
        response.write"</thead>"
        response.write"<tbody>"
          Do While(Not fetchedRecords.EOF)
            response.write"<tr>"
              id=fetchedRecords("ano")
              response.write"<td>" & fetchedRecords("pname") & "</td>"
              response.write"<td>" & fetchedRecords("adate") & "</td>"
              Response.Write"<td>" & "<input type='button' value='Give Treatment' onclick=window.location=""editTreatment.asp?q=" & id &""" /> " & "</td>"
            response.write"</tr>"
            fetchedRecords.MoveNext
          Loop
        response.write"</tbody>"
      response.write"</table>"
    %>
  </body>
</html>
