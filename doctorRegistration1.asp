<!--#include file="databaseConnection.asp"-->
<%
  dim query1, a_type, count, query, emailCheckQuery, fetchedrecords, doctorName, doctorGender, doctorSpecialization, doctorAddress, doctorMobile, doctorEmail, doctorStart, doctorEnd, doctorPassword, confirmPassword
  doctorName=request.Form("name")
  doctorGender=request.Form("gender")
  doctorSpecialization=request.Form("specialization")
  doctorAddress=request.Form("address")
  doctorMobile=request.Form("mobile")
  doctorEmail=request.Form("email")
  doctorStart=request.Form("start")
  doctorEnd=request.Form("end")
  doctorPassword=request.Form("password")
  confirmPassword=request.Form("confirmPassword")
  a_type="doctor"

  response.write(doctorName)
  response.write(doctorGender)
  response.write(doctorSpecialization)
  response.write(doctorAddress)
  response.write(doctorMobile)
  response.write(doctorEmail)
  response.write(doctorStart)
  response.write(doctorEnd)
  response.write(doctorPassword)
  response.write(confirmPassword)

  count=0
  emailCheckQuery="select * from doctor where demail='" & doctorEmail & "'"
  Set fetchedRecords=objConn.Execute(emailCheckQuery)
  Do While(Not fetchedRecords.EOF)
    count=count+1
    fetchedRecords.MoveNext
  Loop
  'response.write"count is "
  'response.write(count)
  if count > 0 then
    response.redirect"redirectHome.asp"
  End if

  if StrComp(doctorPassword,confirmPassword,0)=0 then
    query="insert into doctor(dname,dgender,daddress,demail,dmobile,dspecialization,start_time,end_time,password) values('" & doctorName & "','" & doctorGender & "','" & doctorAddress & "','" & doctorEmail & "','" & doctorMobile & "','" & doctorSpecialization & "','" & doctorStart & "','" & doctorEnd & "','" & doctorPassword & "')"
	query1="insert into login(type,email,password) values('"  & a_type &  "','" & doctorEmail & "','" & doctorPassword & "')"
    objConn.Execute(query)
	objConn.Execute(query1)
    If Err.Number <> 0 Then
      Response.write(Err.Number)
      response.write("<br>")
      response.write(Err.description)
      response.write("<br>")
      response.write(query)
      response.write("<br><br>")
    else
      response.redirect"index2.asp"
    End if
    objConn.close
  else
    response.redirect"redirectHome.asp"
  End if
%>
