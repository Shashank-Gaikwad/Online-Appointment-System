<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->

<%
  dim id, query
  id=Request.QueryString("q")

  'response.write("received id is")
  'response.write(id)

  query="delete from appointment where ano=" & id & ""

  objConn.Execute(query)
  If Err.Number <> 0 Then
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
