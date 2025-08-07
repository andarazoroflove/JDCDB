<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>

<cfquery name="qryUserEdit" datasource="JDCDB">
	UPDATE Officers
	SET
	LastName = '#form.LastName#'
	,FirstName = '#form.FirstName#'
	,JobTitle = '#form.JobTitle#'
	,Phone = '#form.Phone#'
	,Email = '#form.Email#'
	,Archived = '#form.Archived#'
	WHERE UserID = #URL.UserID#
	
</cfquery>	

</head>

<body>

</body>
<cflocation url="useredit.cfm?UserID=#URL.UserID#&Edited=1" />
</html>
