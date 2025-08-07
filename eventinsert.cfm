<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>
</head>

<body>

<cfdump var="#form#">

<cfif IsDefined ("form.officer")>
	<cfset varofficer = '#form.officer#' />	
<cfelse> 
	<cfset varofficer = '28' />
</cfif>

<cfquery name="qryOfficerID" datasource="JDCDB">
	SELECT *
	FROM Officers
	WHERE UserID = #varofficer#
</cfquery>

<cfquery name="qryEventInsert" datasource="JDCDB">
	INSERT INTO EventLog
	(Date, Time, Event, Officer)
	VALUES
	('#DateFormat(Now(), "mmmm dd, yyyy")#','#form.Time#','#form.EventText#','#qryOfficerID.UserID#')
</cfquery>
<cflocation url="eventlog.cfm" />
</body>

</html>
