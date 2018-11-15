<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background-image: linear-gradient(120deg, #a6c0fe 0%, #f68084 100%);
	overflow:hidden;
	}
.mudya-hoya-input{
	border-radius: 25px;
    padding: 1.4%; 
    width: 360px;
    border-style:none;
    height: 30px; 
    outline:none;
    box-shadow:2px 2px gray;
    padding-left:2%;
    padding-right:2%;
    }
    
    .mudya-hoya-input-btn{
    border-radius: 25px;
    padding: 1.4%; 
    border-style:none;
    height: 40px; 
    outline:none;
    box-shadow:2px 2px gray;
    width:40%;
    cursor:pointer;
    }
</style>
</head>
<body>
	<h5 style="position:fixed; left:6%; top:0%; font-family: 'Ubuntu', sans-serif; font-size:50pt; color:white; text-shadow:2px 2px gray;">Enter Valid UserName and Password</h5>

	<form action="AdminLogin" method="post">
	<div style="position:fixed; left:36%; top:35.5%; font-family: 'Ubuntu', sans-serif;font-size:small; text-align:centre;">
		<b style="color:white; text-shadow:2px 2px gray;">Admin UserName</b><br><br>
		<input class="mudya-hoya-input"  required =" " name="Adminname" type="text">
		<br>
		<br>
		<b style="color:white; text-shadow:2px 2px gray;">Password</b><br><br>
		<input class="mudya-hoya-input" required =" " type="password" name ="Adminpass">
		<br>
		<br>
		<input id="submit" type="submit" class="mudya-hoya-input-btn" style="margin-left:30%; margin-right:30%; height:40px; color:white; font-size:medium; background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);" value="Submit">
	</div>
	</form>
	<div style="text-align:center; width:100%; position:absolute; bottom:0;">
		<b style="font-size:xx-large; font-family: 'Ubuntu', sans-serif; color:#f5f7fa; text-shadow:2px 2px gray;">Shubham Group Of Hospitals</b>
		<br>
		<span style="font-family: 'Ubuntu', sans-serif;font-size:small; text-align:centre; color:#f5f7fa; text-shadow:2px 2px gray;">Address <b>Panipat, Haryana M:12345-12345</b></span>
		<br><br>
	</div>
</body>
</html>