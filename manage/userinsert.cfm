<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>

<cfquery name="qryUserInsert" datasource="jdcdb" result="result">
	INSERT INTO Officers
	(LastName,FirstName,Phone,JobTitle,Email,Archived)
	VALUES
	('#form.LastName#','#form.FirstName#','#form.Phone#','#form.JobTitle#','#form.Email#','#form.Archived#')
</cfquery>

</head>
<body>
<cflocation url="useredit.cfm?UserID=#result.IDENTITYCOL#&Edited=0" />
</body>

</html>
