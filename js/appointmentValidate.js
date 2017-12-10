function validateAppointment()
{
  //var name=document.forms["Form"]["name"].value;
  var symptoms=document.forms["Form"]["symptoms"].value;
  var date=document.forms["Form"]["date"].value;
  //var start=document.forms["Form"]["start"].value;
  var minDate=new Date();
  var maxDate=new Date();
  maxDate=maxDate.setMonth(maxDate.getMonth()+1);
  var inputDate=new Date(date);

  if (symptoms==null || symptoms=="",date==null || date=="")
  {
    alert("Please Fill All Required Field");
    return false;
  }
  if(inputDate < minDate)
  {
    alert("past date cannot be accepted");
    return false;
  }
  if(inputDate > maxDate)
  {
    alert("date greater than one month");
    return false;
  }
  return true;
}

function validateTime(t) {
  var xhttp;    
  if (t == "") {
    document.getElementById("time").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("time").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "ajax.asp?q="+t, true);
  xhttp.send();
}