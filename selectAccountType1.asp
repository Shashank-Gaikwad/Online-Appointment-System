<%
  dim accountType
  accountType=request.Form("type")
  response.write(accountType)
  if StrComp (accountType,"patient",0)=0 then
    response.redirect"patientRegistration.asp"
  else
    response.redirect"doctorRegistration.asp"
  End if
%>
