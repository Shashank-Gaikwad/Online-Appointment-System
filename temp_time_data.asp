if count="9:00:00 AM" then
  response.write"<option value='9.00' disabled>9.00</option>"
else
  response.write"<option value='9.00'>9.00</option>"
End if
if count="10:00:00 AM" then
  response.write"<option value='10.00' disabled>10.00</option>"
else
  response.write"<option value='10.00'>10.00</option>"
End if
if count="11:00:00 AM" then
  response.write"<option value='11.00' disabled>11.00</option>"
else
  response.write"<option value='11.00'>11.00</option>"
End if
if count="12:00:00 PM" then
  response.write"<option value='12.00' disabled>12.00</option>"
else
  response.write"<option value='12.00'>12.00</option>"
End if
if count="1:00:00 PM" then
  response.write"<option value='13.00' disabled>1.00</option>"
else
  response.write"<option value='13.00'>1.00</option>"
End if
if count="2:00:00 PM" then
  response.write"<option value='14.00' disabled>2.00</option>"
else
  response.write"<option value='14.00'>2.00</option>"
End if
if count="3:00:00 PM" then
  response.write"<option value='15.00' disabled>3.00</option>"
else
  response.write"<option value='15.00'>3.00</option>"
End if
if count="4:00:00 PM" then
  response.write"<option value='16.00' disabled>4.00</option>"
else
  response.write"<option value='16.00'>4.00</option>"
End if
------------------------------------------------------------------------------------------------------------------------------
9-5=8
9-6=9
9-7=10

10-5=7
10-6=8
10-7=9

11-5=6
11-6=7
11-7=8

------------------------------------------------------------------------------------------------------------------------------

a=Array(0,0,0,0,0,0,0,0)
dim count,result

query="select start_time from appointment where dno=" & doctorId & " and adate=#"& appointmentDate &"#"
Set result=objConn.Execute(query)
'response.write("reterived records" &"<br>")
  Do While(Not result.EOF)
    count=result("start_time")
    if count="9:00:00 AM" then
      a(0)=1
    End if
    if count="10:00:00 AM" then
      a(1)=1
    End if
    if count="11:00:00 AM" then
      a(2)=1
    End if
    if count="12:00:00 PM" then
      a(3)=1
    End if
    if count="1:00:00 PM" then
      a(4)=1
    End if
    if count="2:00:00 PM" then
      a(5)=1
    End if
    if count="3:00:00 PM" then
      a(6)=1
    End if
    if count="4:00:00 PM" then
      a(7)=1
    End if
    'response.write(count)
    result.MoveNext
    Loop
    response.write"<select name='start' id='start' required>"
      response.write"<option value=''>Select</option>"
      if a(0)=1 then
        response.write"<option value='9.00' disabled>9.00</option>"
      else
        response.write"<option value='9.00'>9.00</option>"
      End if
      if a(1)=1 then
        response.write"<option value='10.00' disabled>10.00</option>"
      else
        response.write"<option value='10.00'>10.00</option>"
      End if
      if a(2)=1 then
        response.write"<option value='11.00' disabled>11.00</option>"
      else
        response.write"<option value='11.00'>11.00</option>"
      End if
      if a(3)=1 then
        response.write"<option value='12.00' disabled>12.00</option>"
      else
        response.write"<option value='12.00'>12.00</option>"
      End if
      if a(4)=1 then
        response.write"<option value='13.00' disabled>1.00</option>"
      else
        response.write"<option value='13.00'>1.00</option>"
      End if
      if a(5)=1 then
        response.write"<option value='14.00' disabled>2.00</option>"
      else
        response.write"<option value='14.00'>2.00</option>"
      End if
      if a(6)=1 then
        response.write"<option value='15.00' disabled>3.00</option>"
      else
        response.write"<option value='15.00'>3.00</option>"
      End if
      if a(7)=1 then
        response.write"<option value='16.00' disabled>4.00</option>"
      else
        response.write"<option value='16.00'>4.00</option>"
      End if
    response.write"</select>"
