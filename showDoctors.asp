<html>

  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="databaseConnection.asp"-->
    <center><h1>List Of Doctors</h1></center>
    <%
      dim count,query,fetchedrecords,id,q
      query="select * from doctor"
      Set fetchedRecords=objConn.Execute(query)
      response.write"<table>"
        response.write"<thead>"
          response.write"<tr>"
            response.write"<th>Doctor Name</th>"
            response.write"<th>Specialization</th>"
            response.write"<th>Start Time</th>"
            response.write"<th>End Time</th>"
          response.write"</tr>"
        response.write"</thead>"
        response.write"<tbody>"
          Do While(Not fetchedRecords.EOF)
            response.write"<tr>"
              id=fetchedRecords("dno")
              response.write"<td>" & fetchedRecords("dname") & "</td>"
              response.write"<td>" & fetchedRecords("dspecialization") & "</td>"
              response.write"<td>" & fetchedRecords("start_time") & "</td>"
              response.write"<td>" & fetchedRecords("end_time") & "</td>"
            response.write"</tr>"
            fetchedRecords.MoveNext
          Loop
        response.write"</tbody>"
      response.write"</table>"
    %>
  </body>
</html>
