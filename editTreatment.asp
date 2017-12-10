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
      <center><h1>Treatment For Patient</h1></center>
      <%
        dim count,query,fetchedrecords,treatmentDescription,treatmentNote

        id=Request.QueryString("q")

        'response.write("received id is")
        'response.write(id)
		
		count=0
        query="select * from treatment where ano=" & id & ""
        Set fetchedRecords=objConn.Execute(query)
        Do While(Not fetchedRecords.EOF)
          treatmentDescription=fetchedRecords("description")
          treatmentNote=fetchedRecords("note")
		  count=count+1
          fetchedRecords.MoveNext
        Loop
        'response.write(treatmentDescription)
        'response.write(treatmentNote)
        response.write"<div>"
		'If count <> 0 Then
          'response.write"<form action='updateTreatment.asp' method='post'>"
            'response.write"<center>"
              'response.write"Description <input type='text' id='description' name='description' placeholder='Description' value='" & treatmentDescription & "' required><br>"
              'response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
              'response.write"Note <input type='text' id='note' name='note' placeholder='Note' value='" & treatmentNote & "' required><br>"
			  'response.write"<input type='hidden' id='appointmentNumber' name='appointmentNumber' value='" & id & "' required><br>"
              'response.write"<input type='submit' value='Submit'>"
              'response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
              'response.write"<input type='reset' value='Clear'>"
            'response.write"</center>"
          'response.write"</form>"
		'else
		  response.write"<form action='insertTreatment.asp' method='post'>"
            response.write"<center>"
              response.write"Description <input type='text' id='description' name='description' placeholder='Description' required><br>"
              response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
              response.write"Note <input type='text' id='note' name='note' placeholder='Note' required><br>"
			  response.write"<input type='hidden' id='appointmentNumber' name='appointmentNumber' value='" & id & "' required><br>"
              response.write"<input type='submit' value='Submit'>"
              response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
              response.write"<input type='reset' value='Clear'>"
            response.write"</center>"
          response.write"</form>"
		'End if
        response.write"</div>"
		
      %>
      

  </body>
<html>
