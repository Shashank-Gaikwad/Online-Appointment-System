<%
  If (Session("account") <> "admin" Or (Session("account") = "admin" and Session("userName")<>"admin@gmail.com")) then
    response.redirect"index2.asp"
  End if
%>
<html>
  <body>
    <!--<br><br>-->
    <!--#include file="header2.asp"-->
    <!--#include file="adminHeader.asp"-->
    <!--#include file="databaseConnection.asp"-->
      <center><h1>Manage Doctors</h1></center>
      <%
        dim count,query,fetchedrecords,id,q
        query="select * from doctor"
        Set fetchedRecords=objConn.Execute(query)
        response.write"<table>"
          response.write"<thead>"
            response.write"<tr>"
              response.write"<th>ID</th>"
              response.write"<th>Doctor Name</th>"
              response.write"<th>Email</th>"
              response.write"<th>Password</th>"
              response.write"<th>Delete Account</th>"
            response.write"</tr>"
          response.write"</thead>"
          response.write"<tbody>"
            Do While(Not fetchedRecords.EOF)
              response.write"<tr>"
                id=fetchedRecords("dno")
                response.write"<td>" & id & "</td>"
                response.write"<td>" & fetchedRecords("dname") & "</td>"
                response.write"<td>" & fetchedRecords("demail") & "</td>"
                response.write"<td>" & fetchedRecords("password") & "</td>"
                Response.Write"<td>" & "<input type='button' value='Delete' onclick=window.location=""deleteDoctor.asp?q=" & id &""" /> " & "</td>"
              response.write"</tr>"
              fetchedRecords.MoveNext
            Loop
          response.write"</tbody>"
        response.write"</table>"
      %>
  </body>
</html>
