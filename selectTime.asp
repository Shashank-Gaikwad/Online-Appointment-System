<%
  If Session("account") <> "patient" then
    response.redirect"index2.asp"
  End if
%>

<!--#include file="databaseConnection.asp"-->



<html>
  <body>
  <!--#include file="header2.asp"-->
  <!--#include file="patientHeader.asp"-->
    <center><h1>Select Time</h1></center>
  <%
    dim query, doctorTimeQuery, fetchedRecords, accountId, accountType, accountEmail,doctorId, doctorStart, doctorEnd, patientSymptoms, appointmentDate

    accountId=session("userId")
    accountType=session("account")
    accountEmail=session("userName")

    doctorId=request.Form("name")
    patientSymptoms=request.Form("symptoms")
    appointmentDate=request.Form("date")

    'response.write(accountId)
    'response.write(accountType)
    'response.write(accountEmail)

    doctorTimeQuery="select start_time,end_time from doctor where dno=" & doctorId & ""
    Set fetchedRecords=objConn.Execute(doctorTimeQuery)
    Do While(Not fetchedRecords.EOF)
      doctorStart=fetchedRecords("start_time")
      doctorEnd=fetchedRecords("end_time")
      fetchedRecords.MoveNext
    Loop

    'response.write"values received are" & "<br>"
    'response.write(doctorId)
    'response.write"<br>"
    'response.write(patientSymptoms)
    'response.write"<br>"
    'response.write(appointmentDate)
    'response.write"<br>"
    'response.write(doctorStart)
    'response.write"<br>"
    'response.write(doctorEnd)
    'response.write"<br>"
    'response.write"after adding time"
    'response.write(DateAdd("h",2,doctorStart) & "<br />")


    a6=Array(0,0,0,0,0,0)
    a7=Array(0,0,0,0,0,0,0)
    a8=Array(0,0,0,0,0,0,0,0)
    a9=Array(0,0,0,0,0,0,0,0,0)
    a10=Array(0,0,0,0,0,0,0,0,0,0)

    'a=Array(0,0,0,0,0,0,0,0)
    dim count,result

    response.write"<form action='appointment1.asp' method='post'>"

    query="select start_time from appointment where dno=" & doctorId & " and adate=#"& appointmentDate &"#"
    Set result=objConn.Execute(query)
    'response.write("reterived records" &"<br>")

    '9.00 to 5.00

    if doctorStart="9:00:00 AM" and doctorEnd="5:00:00 PM" then
      Do While(Not result.EOF)
        count=result("start_time")
        if count="9:00:00 AM" then
          a8(0)=1
        End if
        if count="10:00:00 AM" then
          a8(1)=1
        End if
        if count="11:00:00 AM" then
          a8(2)=1
        End if
        if count="12:00:00 PM" then
          a8(3)=1
        End if
        if count="1:00:00 PM" then
          a8(4)=1
        End if
        if count="2:00:00 PM" then
          a8(5)=1
        End if
        if count="3:00:00 PM" then
          a8(6)=1
        End if
        if count="4:00:00 PM" then
          a8(7)=1
        End if
        'response.write(count)
        result.MoveNext
        Loop
        response.write"<select name='start' id='start' required>"
          response.write"<option value=''>Select</option>"
          if a8(0)=1 then
            response.write"<option value='9.00' disabled>9.00</option>"
          else
            response.write"<option value='9.00'>9.00</option>"
          End if
          if a8(1)=1 then
            response.write"<option value='10.00' disabled>10.00</option>"
          else
            response.write"<option value='10.00'>10.00</option>"
          End if
          if a8(2)=1 then
            response.write"<option value='11.00' disabled>11.00</option>"
          else
            response.write"<option value='11.00'>11.00</option>"
          End if
          if a8(3)=1 then
            response.write"<option value='12.00' disabled>12.00</option>"
          else
            response.write"<option value='12.00'>12.00</option>"
          End if
          if a8(4)=1 then
            response.write"<option value='13.00' disabled>1.00</option>"
          else
            response.write"<option value='13.00'>1.00</option>"
          End if
          if a8(5)=1 then
            response.write"<option value='14.00' disabled>2.00</option>"
          else
            response.write"<option value='14.00'>2.00</option>"
          End if
          if a8(6)=1 then
            response.write"<option value='15.00' disabled>3.00</option>"
          else
            response.write"<option value='15.00'>3.00</option>"
          End if
          if a8(7)=1 then
            response.write"<option value='16.00' disabled>4.00</option>"
          else
            response.write"<option value='16.00'>4.00</option>"
          End if
        response.write"</select>"
      End if

      '9.00 to 6.00

      if doctorStart="9:00:00 AM" and doctorEnd="6:00:00 PM" then
        Do While(Not result.EOF)
          count=result("start_time")
          if count="9:00:00 AM" then
            a9(0)=1
          End if
          if count="10:00:00 AM" then
            a9(1)=1
          End if
          if count="11:00:00 AM" then
            a9(2)=1
          End if
          if count="12:00:00 PM" then
            a9(3)=1
          End if
          if count="1:00:00 PM" then
            a9(4)=1
          End if
          if count="2:00:00 PM" then
            a9(5)=1
          End if
          if count="3:00:00 PM" then
            a9(6)=1
          End if
          if count="4:00:00 PM" then
            a9(7)=1
          End if
          if count="5:00:00 PM" then
            a9(8)=1
          End if
        'response.write(count)
        result.MoveNext
        Loop

        response.write"<select name='start' id='start' required>"
          response.write"<option value=''>Select</option>"
          if a9(0)=1 then
            response.write"<option value='9.00' disabled>9.00</option>"
          else
            response.write"<option value='9.00'>9.00</option>"
          End if
          if a9(1)=1 then
            response.write"<option value='10.00' disabled>10.00</option>"
          else
            response.write"<option value='10.00'>10.00</option>"
          End if
          if a9(2)=1 then
            response.write"<option value='11.00' disabled>11.00</option>"
          else
            response.write"<option value='11.00'>11.00</option>"
          End if
          if a9(3)=1 then
            response.write"<option value='12.00' disabled>12.00</option>"
          else
            response.write"<option value='12.00'>12.00</option>"
          End if
          if a9(4)=1 then
            response.write"<option value='13.00' disabled>1.00</option>"
          else
            response.write"<option value='13.00'>1.00</option>"
          End if
          if a9(5)=1 then
            response.write"<option value='14.00' disabled>2.00</option>"
          else
            response.write"<option value='14.00'>2.00</option>"
          End if
          if a9(6)=1 then
            response.write"<option value='15.00' disabled>3.00</option>"
          else
            response.write"<option value='15.00'>3.00</option>"
          End if
          if a9(7)=1 then
            response.write"<option value='16.00' disabled>4.00</option>"
          else
            response.write"<option value='16.00'>4.00</option>"
          End if
          if a9(8)=1 then
            response.write"<option value='17.00' disabled>5.00</option>"
          else
            response.write"<option value='17.00'>5.00</option>"
          End if
        response.write"</select>"
      End if

      '9.00 to 7.00

      if doctorStart="9:00:00 AM" and doctorEnd="7:00:00 PM" then
        Do While(Not result.EOF)
          count=result("start_time")
          if count="9:00:00 AM" then
            a10(0)=1
          End if
          if count="10:00:00 AM" then
            a10(1)=1
          End if
          if count="11:00:00 AM" then
            a10(2)=1
          End if
          if count="12:00:00 PM" then
            a10(3)=1
          End if
          if count="1:00:00 PM" then
            a10(4)=1
          End if
          if count="2:00:00 PM" then
            a10(5)=1
          End if
          if count="3:00:00 PM" then
            a10(6)=1
          End if
          if count="4:00:00 PM" then
            a10(7)=1
          End if
          if count="5:00:00 PM" then
            a10(8)=1
          End if
          if count="6:00:00 PM" then
            a10(9)=1
          End if
        'response.write(count)
        result.MoveNext
        Loop

        response.write"<select name='start' id='start' required>"
          response.write"<option value=''>Select</option>"
          if a10(0)=1 then
            response.write"<option value='9.00' disabled>9.00</option>"
          else
            response.write"<option value='9.00'>9.00</option>"
          End if
          if a10(1)=1 then
            response.write"<option value='10.00' disabled>10.00</option>"
          else
            response.write"<option value='10.00'>10.00</option>"
          End if
          if a10(2)=1 then
            response.write"<option value='11.00' disabled>11.00</option>"
          else
            response.write"<option value='11.00'>11.00</option>"
          End if
          if a10(3)=1 then
            response.write"<option value='12.00' disabled>12.00</option>"
          else
            response.write"<option value='12.00'>12.00</option>"
          End if
          if a10(4)=1 then
            response.write"<option value='13.00' disabled>1.00</option>"
          else
            response.write"<option value='13.00'>1.00</option>"
          End if
          if a10(5)=1 then
            response.write"<option value='14.00' disabled>2.00</option>"
          else
            response.write"<option value='14.00'>2.00</option>"
          End if
          if a10(6)=1 then
            response.write"<option value='15.00' disabled>3.00</option>"
          else
            response.write"<option value='15.00'>3.00</option>"
          End if
          if a10(7)=1 then
            response.write"<option value='16.00' disabled>4.00</option>"
          else
            response.write"<option value='16.00'>4.00</option>"
          End if
          if a10(8)=1 then
            response.write"<option value='17.00' disabled>5.00</option>"
          else
            response.write"<option value='17.00'>5.00</option>"
          End if
          if a10(9)=1 then
            response.write"<option value='18.00' disabled>6.00</option>"
          else
            response.write"<option value='18.00'>6.00</option>"
          End if
        response.write"</select>"
      End if

      '10.00 t0 5.00

      if doctorStart="10:00:00 AM" and doctorEnd="5:00:00 PM" then
        Do While(Not result.EOF)
          count=result("start_time")
          if count="10:00:00 AM" then
            a7(0)=1
          End if
          if count="11:00:00 AM" then
            a7(1)=1
          End if
          if count="12:00:00 PM" then
            a7(2)=1
          End if
          if count="1:00:00 PM" then
            a7(3)=1
          End if
          if count="2:00:00 PM" then
            a7(4)=1
          End if
          if count="3:00:00 PM" then
            a7(5)=1
          End if
          if count="4:00:00 PM" then
            a7(6)=1
          End if
          'response.write(count)
          result.MoveNext
          Loop
          response.write"<select name='start' id='start' required>"
            response.write"<option value=''>Select</option>"
            if a7(0)=1 then
              response.write"<option value='10.00' disabled>10.00</option>"
            else
              response.write"<option value='10.00'>10.00</option>"
            End if
            if a7(1)=1 then
              response.write"<option value='11.00' disabled>11.00</option>"
            else
              response.write"<option value='11.00'>11.00</option>"
            End if
            if a7(2)=1 then
              response.write"<option value='12.00' disabled>12.00</option>"
            else
              response.write"<option value='12.00'>12.00</option>"
            End if
            if a7(3)=1 then
              response.write"<option value='13.00' disabled>1.00</option>"
            else
              response.write"<option value='13.00'>1.00</option>"
            End if
            if a7(4)=1 then
              response.write"<option value='14.00' disabled>2.00</option>"
            else
              response.write"<option value='14.00'>2.00</option>"
            End if
            if a7(5)=1 then
              response.write"<option value='15.00' disabled>3.00</option>"
            else
              response.write"<option value='15.00'>3.00</option>"
            End if
            if a7(6)=1 then
              response.write"<option value='16.00' disabled>4.00</option>"
            else
              response.write"<option value='16.00'>4.00</option>"
            End if
          response.write"</select>"
        End if

        '10.00 to 6.00

        if doctorStart="10:00:00 AM" and doctorEnd="6:00:00 PM" then
          Do While(Not result.EOF)
            count=result("start_time")
            if count="10:00:00 AM" then
              a8(0)=1
            End if
            if count="11:00:00 AM" then
              a8(1)=1
            End if
            if count="12:00:00 PM" then
              a8(2)=1
            End if
            if count="1:00:00 PM" then
              a8(3)=1
            End if
            if count="2:00:00 PM" then
              a8(4)=1
            End if
            if count="3:00:00 PM" then
              a8(5)=1
            End if
            if count="4:00:00 PM" then
              a8(6)=1
            End if
            if count="5:00:00 PM" then
              a8(7)=1
            End if
            'response.write(count)
            result.MoveNext
            Loop
            response.write"<select name='start' id='start' required>"
              response.write"<option value=''>Select</option>"
              if a8(0)=1 then
                response.write"<option value='10.00' disabled>10.00</option>"
              else
                response.write"<option value='10.00'>10.00</option>"
              End if
              if a8(1)=1 then
                response.write"<option value='11.00' disabled>11.00</option>"
              else
                response.write"<option value='11.00'>11.00</option>"
              End if
              if a8(2)=1 then
                response.write"<option value='12.00' disabled>12.00</option>"
              else
                response.write"<option value='12.00'>12.00</option>"
              End if
              if a8(3)=1 then
                response.write"<option value='13.00' disabled>1.00</option>"
              else
                response.write"<option value='13.00'>1.00</option>"
              End if
              if a8(4)=1 then
                response.write"<option value='14.00' disabled>2.00</option>"
              else
                response.write"<option value='14.00'>2.00</option>"
              End if
              if a8(5)=1 then
                response.write"<option value='15.00' disabled>3.00</option>"
              else
                response.write"<option value='15.00'>3.00</option>"
              End if
              if a8(6)=1 then
                response.write"<option value='16.00' disabled>4.00</option>"
              else
                response.write"<option value='16.00'>4.00</option>"
              End if
              if a8(7)=1 then
                response.write"<option value='17.00' disabled>5.00</option>"
              else
                response.write"<option value='17.00'>5.00</option>"
              End if
            response.write"</select>"
          End if

          '10.00 to 7.00

          if doctorStart="10:00:00 AM" and doctorEnd="7:00:00 PM" then
            Do While(Not result.EOF)
              count=result("start_time")
              if count="10:00:00 AM" then
                a9(0)=1
              End if
              if count="11:00:00 AM" then
                a9(1)=1
              End if
              if count="12:00:00 PM" then
                a9(2)=1
              End if
              if count="1:00:00 PM" then
                a9(3)=1
              End if
              if count="2:00:00 PM" then
                a9(4)=1
              End if
              if count="3:00:00 PM" then
                a9(5)=1
              End if
              if count="4:00:00 PM" then
                a9(6)=1
              End if
              if count="5:00:00 PM" then
                a9(7)=1
              End if
              if count="6:00:00 PM" then
                a9(8)=1
              End if
              'response.write(count)
              result.MoveNext
              Loop
              response.write"<select name='start' id='start' required>"
                response.write"<option value=''>Select</option>"
                if a9(0)=1 then
                  response.write"<option value='10.00' disabled>10.00</option>"
                else
                  response.write"<option value='10.00'>10.00</option>"
                End if
                if a9(1)=1 then
                  response.write"<option value='11.00' disabled>11.00</option>"
                else
                  response.write"<option value='11.00'>11.00</option>"
                End if
                if a9(2)=1 then
                  response.write"<option value='12.00' disabled>12.00</option>"
                else
                  response.write"<option value='12.00'>12.00</option>"
                End if
                if a9(3)=1 then
                  response.write"<option value='13.00' disabled>1.00</option>"
                else
                  response.write"<option value='13.00'>1.00</option>"
                End if
                if a9(4)=1 then
                  response.write"<option value='14.00' disabled>2.00</option>"
                else
                  response.write"<option value='14.00'>2.00</option>"
                End if
                if a9(5)=1 then
                  response.write"<option value='15.00' disabled>3.00</option>"
                else
                  response.write"<option value='15.00'>3.00</option>"
                End if
                if a9(6)=1 then
                  response.write"<option value='16.00' disabled>4.00</option>"
                else
                  response.write"<option value='16.00'>4.00</option>"
                End if
                if a9(7)=1 then
                  response.write"<option value='17.00' disabled>5.00</option>"
                else
                  response.write"<option value='17.00'>5.00</option>"
                End if
                if a9(8)=1 then
                  response.write"<option value='18.00' disabled>6.00</option>"
                else
                  response.write"<option value='18.00'>6.00</option>"
                End if
              response.write"</select>"
            End if

            '11.00 to 5.00

            if doctorStart="11:00:00 AM" and doctorEnd="5:00:00 PM" then
              Do While(Not result.EOF)
                count=result("start_time")
                if count="11:00:00 AM" then
                  a6(0)=1
                End if
                if count="12:00:00 PM" then
                  a6(1)=1
                End if
                if count="1:00:00 PM" then
                  a6(2)=1
                End if
                if count="2:00:00 PM" then
                  a6(3)=1
                End if
                if count="3:00:00 PM" then
                  a6(4)=1
                End if
                if count="4:00:00 PM" then
                  a6(5)=1
                End if
                'response.write(count)
                result.MoveNext
                Loop
                response.write"<select name='start' id='start' required>"
                  response.write"<option value=''>Select</option>"
                  if a6(0)=1 then
                    response.write"<option value='11.00' disabled>11.00</option>"
                  else
                    response.write"<option value='11.00'>11.00</option>"
                  End if
                  if a6(1)=1 then
                    response.write"<option value='12.00' disabled>12.00</option>"
                  else
                    response.write"<option value='12.00'>12.00</option>"
                  End if
                  if a6(2)=1 then
                    response.write"<option value='13.00' disabled>1.00</option>"
                  else
                    response.write"<option value='13.00'>1.00</option>"
                  End if
                  if a6(3)=1 then
                    response.write"<option value='14.00' disabled>2.00</option>"
                  else
                    response.write"<option value='14.00'>2.00</option>"
                  End if
                  if a6(4)=1 then
                    response.write"<option value='15.00' disabled>3.00</option>"
                  else
                    response.write"<option value='15.00'>3.00</option>"
                  End if
                  if a6(5)=1 then
                    response.write"<option value='16.00' disabled>4.00</option>"
                  else
                    response.write"<option value='16.00'>4.00</option>"
                  End if
                response.write"</select>"
              End if

              '11.00 to 6.00

              if doctorStart="11:00:00 AM" and doctorEnd="6:00:00 PM" then
                Do While(Not result.EOF)
                  count=result("start_time")
                  if count="11:00:00 AM" then
                    a7(0)=1
                  End if
                  if count="12:00:00 PM" then
                    a7(1)=1
                  End if
                  if count="1:00:00 PM" then
                    a7(2)=1
                  End if
                  if count="2:00:00 PM" then
                    a7(3)=1
                  End if
                  if count="3:00:00 PM" then
                    a7(4)=1
                  End if
                  if count="4:00:00 PM" then
                    a7(5)=1
                  End if
                  if count="5:00:00 PM" then
                    a7(6)=1
                  End if
                  'response.write(count)
                  result.MoveNext
                  Loop
                  response.write"<select name='start' id='start' required>"
                    response.write"<option value=''>Select</option>"
                    if a7(0)=1 then
                      response.write"<option value='11.00' disabled>11.00</option>"
                    else
                      response.write"<option value='11.00'>11.00</option>"
                    End if
                    if a7(1)=1 then
                      response.write"<option value='12.00' disabled>12.00</option>"
                    else
                      response.write"<option value='12.00'>12.00</option>"
                    End if
                    if a7(2)=1 then
                      response.write"<option value='13.00' disabled>1.00</option>"
                    else
                      response.write"<option value='13.00'>1.00</option>"
                    End if
                    if a7(3)=1 then
                      response.write"<option value='14.00' disabled>2.00</option>"
                    else
                      response.write"<option value='14.00'>2.00</option>"
                    End if
                    if a7(4)=1 then
                      response.write"<option value='15.00' disabled>3.00</option>"
                    else
                      response.write"<option value='15.00'>3.00</option>"
                    End if
                    if a7(5)=1 then
                      response.write"<option value='16.00' disabled>4.00</option>"
                    else
                      response.write"<option value='16.00'>4.00</option>"
                    End if
                    if a7(6)=1 then
                      response.write"<option value='17.00' disabled>5.00</option>"
                    else
                      response.write"<option value='17.00'>5.00</option>"
                    End if
                  response.write"</select>"
                End if

                '11.00 to 7.00

                if doctorStart="11:00:00 AM" and doctorEnd="7:00:00 PM" then
                  Do While(Not result.EOF)
                    count=result("start_time")
                    if count="11:00:00 AM" then
                      a8(0)=1
                    End if
                    if count="12:00:00 PM" then
                      a8(1)=1
                    End if
                    if count="1:00:00 PM" then
                      a8(2)=1
                    End if
                    if count="2:00:00 PM" then
                      a8(3)=1
                    End if
                    if count="3:00:00 PM" then
                      a8(4)=1
                    End if
                    if count="4:00:00 PM" then
                      a8(5)=1
                    End if
                    if count="5:00:00 PM" then
                      a8(6)=1
                    End if
                    if count="6:00:00 PM" then
                      a8(7)=1
                    End if
                    'response.write(count)
                    result.MoveNext
                    Loop
                    response.write"<select name='start' id='start' required>"
                      response.write"<option value=''>Select</option>"
                      if a8(0)=1 then
                        response.write"<option value='11.00' disabled>11.00</option>"
                      else
                        response.write"<option value='11.00'>11.00</option>"
                      End if
                      if a8(1)=1 then
                        response.write"<option value='12.00' disabled>12.00</option>"
                      else
                        response.write"<option value='12.00'>12.00</option>"
                      End if
                      if a8(2)=1 then
                        response.write"<option value='13.00' disabled>1.00</option>"
                      else
                        response.write"<option value='13.00'>1.00</option>"
                      End if
                      if a8(3)=1 then
                        response.write"<option value='14.00' disabled>2.00</option>"
                      else
                        response.write"<option value='14.00'>2.00</option>"
                      End if
                      if a8(4)=1 then
                        response.write"<option value='15.00' disabled>3.00</option>"
                      else
                        response.write"<option value='15.00'>3.00</option>"
                      End if
                      if a8(5)=1 then
                        response.write"<option value='16.00' disabled>4.00</option>"
                      else
                        response.write"<option value='16.00'>4.00</option>"
                      End if
                      if a8(6)=1 then
                        response.write"<option value='17.00' disabled>5.00</option>"
                      else
                        response.write"<option value='17.00'>5.00</option>"
                      End if
                      if a8(7)=1 then
                        response.write"<option value='18.00' disabled>6.00</option>"
                      else
                        response.write"<option value='18.00'>6.00</option>"
                      End if
                    response.write"</select>"
                  End if
        response.write"<br>"

        response.write"<input type='hidden' id='name' name='name' value=" & doctorId & ">"

        response.write"<input type='hidden' id='symptoms' name='symptoms' value='" & patientSymptoms & "'>"

        response.write"<input type='hidden' id='date' name='date' value='" & appointmentDate & "'>"


        response.write"<input type='submit' value='Request Appointment'>"
        response.write"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
        response.write"<input type='reset' value='Cancel'>"

      response.write"</form>"
  %>
  </body>
<html>
