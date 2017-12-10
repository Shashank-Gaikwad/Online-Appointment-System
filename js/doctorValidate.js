function validateRegistration()
    {
      var name=document.forms["Form"]["name"].value;
      var gender=document.forms["Form"]["gender"].value;
      var specialization=document.forms["Form"]["specialization"].value;
      var address=document.forms["Form"]["address"].value
      var mobile=document.forms["Form"]["mobile"].value;
      var email=document.forms["Form"]["email"].value;
      //var start=document.forms["Form"]["start"].value;
      //var end=document.forms["Form"]["end"].value;
      var password=document.forms["Form"]["password"].value;
      var confirmPassword=document.forms["Form"]["confirmPassword"].value;

      var nameExp=/^[A-Za-z\s]+$/;
      var emailExp=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      var mobileExp=/^\d{10}$/;

      if (name==null || name=="",gender==null || gender=="",specialization==null || specialization=="",address==null || address=="",mobile==null || mobile=="",email==null || email=="",password==null || password=="",confirmPassword==null || confirmPassword=="")
      {
        alert("Please Fill All Required Field");
        return false;
      }
      if(!nameExp.test(name))
      {
        alert("Invalid name");
        return false;
      }
      if(!emailExp.test(email))
      {
        alert("Invalid email");
        return false;
      }
      if(!mobileExp.test(mobile))
      {
        alert("Invalid mobile");
        return false;
      }
	  if(password!=confirmPassword)
      {
        alert("password does not match");
        return false;
      }
      return true;
    }

    function validateInfo()
    {
      var name=document.forms["Form"]["name"].value;
      var gender=document.forms["Form"]["gender"].value;
      var specialization=document.forms["Form"]["specialization"].value;
      var address=document.forms["Form"]["address"].value
      var mobile=document.forms["Form"]["mobile"].value;
      var email=document.forms["Form"]["email"].value;
      //var start=document.forms["Form"]["start"].value;
      //var end=document.forms["Form"]["end"].value;

      var nameExp=/^[A-Za-z\s]+$/;
      var emailExp=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      var mobileExp=/^\d{10}$/;

      if (name==null || name=="",gender==null || gender=="",specialization==null || specialization=="",address==null || address=="",mobile==null || mobile=="",email==null || email=="")
      {
        alert("Please Fill All Required Field");
        return false;
      }
      if(!nameExp.test(name))
      {
        alert("Invalid name");
        return false;
      }
      if(!emailExp.test(email))
      {
        alert("Invalid email");
        return false;
      }
      if(!mobileExp.test(mobile))
      {
        alert("Invalid mobile");
        return false;
      }
      return true;
    }

    function validatePassword()
    {
      var password=document.forms["Form"]["password"].value;
      var confirmPassword=document.forms["Form"]["confirmPassword"].value;

      if (password==null || password=="",confirmPassword==null || confirmPassword=="")
      {
        alert("Please Fill All Required Field");
        return false;
      }
      if(password!=confirmPassword)
        {
          alert("password does not match");
          return false;
        }
        return true;
    }
