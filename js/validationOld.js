

function istext(valph,msg)
{
	var alpha=/^[a-zA-Z \s]+$/;
	if(valph.value.match(alpha))
	{
		return true;
	}
	else
	{
		alert(msg);
		return false;
	}
}

function ismobile(vnum,msg)
{
	var digt=/^[0-9]+$/;
	//n=String(vnum);
	var n=document.getElementById('mobile').value;
	if(vnum.value.match(digt))
	{
		if(n.length==10)
		{
			return true;
		}
		else
		{

			alert("mobile no. should be 10 digit long");
			return false;
		}
	}
	else
	{

		alert(msg);
		return false;
	}
}


function isemail() {
    var x = document.getElementById('email').value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
