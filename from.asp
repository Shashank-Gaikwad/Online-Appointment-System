<html>
	<head>
		<script src="validation.js"></script>
	</head>
	<body>
		<!--#include file="header.asp"-->
		<form>
			Name<input type="text" name="name" id="name" onblur="istext(document.getElementById('name'),'alphabets only please')">
		</form>
	</body>
</html>