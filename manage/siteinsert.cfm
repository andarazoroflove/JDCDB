<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>

<cfquery name="qrySiteInsert" datasource="jdcdb" result="result">
	INSERT INTO Sites
	(SiteName,Active)
	VALUES
	('#form.SiteName#','#form.Status#')
</cfquery>

</head>
<body>
<cflocation url="siteedit.cfm?SiteID=#result.IDENTITYCOL#&Edited=0" />
</body>

</html>
