<html>
<head>
  <script src="js/appointmentValidate.js"></script>
</head>


<body>
  <!--<br><br>-->
  <!--#include file="header2.asp"-->
  <!--#include file="patientHeader.asp"-->
  <!--#include file="databaseConnection.asp"-->
<center><h1>Appointment</h1>

<div>
  <form action="selectTime.asp" name="Form" method="POST" onsubmit="return validateAppointment()">

	Doctor Name
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <!--<input type="text" id="name" name="name" placeholder="Your name.." onblur="istext(document.getElementById('name'),'Alphabets only please')" required><br>-->
    <%
      dim query,fetchedrecords,doctorId,doctorName,doctorSpecialization

      query="select * from doctor order by dname"
      Set fetchedRecords=objConn.Execute(query)
      response.write"<select name='name' id='name' required>"
        response.write"<option value=''>Select</option>"
        Do While(Not fetchedRecords.EOF)
          doctorId=fetchedRecords("dno")
          doctorName=fetchedRecords("dname")
          doctorSpecialization=fetchedRecords("dspecialization")
          response.write"<option value='" & doctorId & "'>" & doctorName & "</option>"
          fetchedRecords.MoveNext
        Loop
      response.write"</select>"
      response.write"<br>"
    %>
	Symptoms
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text" id="symptoms" name="symptoms" placeholder="Your Symptoms.."><br>

	Date
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="date" id="date" name="date" placeholder="Date"><br>


	<!--Start Time-->
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<!--<input type="text" id="time" name="time"><br>-->
<!--
  <select name="start" id="start" required>
    <option value="">Select</option>
    <option value="10.00">10.00</option>
    <option value="10.30">10.30</option>
    <option value="11.00">11.00</option>
    <option value="11.30">11.30</option>
    <option value="12.00">12.00</option>
    <option value="12.30">12.30</option>
    <option value="13.00">1.00</option>
    <option value="13.30">1.30</option>
    <option value="14.00">2.00</option>
    <option value="14.30">2.30</option>
    <option value="15.00">3.00</option>
    <option value="15.30">3.30</option>
    <option value="16.00">4.00</option>
    <option value="16.30">4.30</option>
    <option value="17.00">5.00</option>
  </select><br>
--><br>

	<input type="submit" value="Request Appointment">
	<input type="reset" value="Cancel">


	 </form>
</div>


</body>
</html>
