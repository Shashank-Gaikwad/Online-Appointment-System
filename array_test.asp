<!--#include file="databaseConnection.asp"-->
<%
  dim count,query,fetchedrecords,i,name
  name=Array(100)
  i=0
  query="select * from patient"
  Set fetchedRecords=objConn.Execute(query)
  Do While(Not fetchedRecords.EOF)
    'response.write fetchedRecords("pname")
    name(i)=fetchedRecords("pname")
    response.write name(i)
    response.write"<br>"
    i=i+1
    fetchedRecords.MoveNext
  Loop
%>
