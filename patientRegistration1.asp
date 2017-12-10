<!--#include file="databaseConnection.asp"-->
<%
  dim query1, a_type, count, query, emailCheckQuery, fetchedrecords, patientName, patientGender, patientBirthdate, patientAddress, patientMobile, patientEmail, patientPassword, confirmPassword
  patientName=request.Form("name")
  patientGender=request.Form("gender")
  patientBirthdate=request.Form("birthdate")
  patientAddress=request.Form("address")
  patientMobile=request.Form("mobile")
  patientEmail=request.Form("email")
  patientPassword=request.Form("password")
  confirmPassword=request.Form("confirmPassword")
  a_type="patient"

'  response.write(patientName)
'  response.write(patientGender)
'  response.write(patientBirthdate)
'  response.write(patientAddress)
'  response.write(patientMobile)
'  response.write(patientEmail)
'  response.write(patientPassword)
'  response.write(confirmPassword)

  count=0
  emailCheckQuery="select * from patient where pemail='" & patientEmail & "'"
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

  if StrComp(patientPassword,confirmPassword,0)=0 then
    query="insert into patient(pname,pgender,pbirthdate,paddress,pmobile,pemail,password) values('" & patientName & "','" & patientGender & "','" & patientBirthdate & "','" & patientAddress & "','" & patientMobile & "','" & patientEmail & "','" & patientPassword & "')"
	query1="insert into login(type,email,password) values('"  & a_type &  "','" & patientEmail & "','" & patientPassword & "')"
    objConn.Execute(query)
	objConn.Execute(query1)
    if Err.Number <> 0 Then
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
