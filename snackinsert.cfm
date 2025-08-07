<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>
</head>
<body>

<cfdump var="#form#">

<cfquery name="qryEventInsert" datasource="JDCDB">
	INSERT INTO Snacks
	(SnackDate, SnackDay, SnackMenu, SnackServed, SnackRefused, SnackComment)
	VALUES
	('#form.snackdate#','#form.snackday#','#form.snackmenu#','#form.snackserved#','#form.snackrefused#','#form.snackcomment#')
</cfquery>

<cflocation url="snackoptions.cfm?success=1" />

</body>

</html>
