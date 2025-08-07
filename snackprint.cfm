<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<cfquery name="qrysnacks" datasource="jdcdb">
	SELECT *
	FROM Snacks
	WHERE SNACKDATE  = '#url.snackdate#'
</cfquery>

<cfset vardate="#DateFormat(url.snackdate, "mm-dd-yyyy")#">

</head>

<body>
<CFHEADER NAME="CONTENT-DISPOSITION" VALUE="ATTACHMENT;FILENAME=SnackLog-#vardate#.RTF" />
<CFCONTENT TYPE="TEXT/RICHTEXT" /><cfinclude template="RTFS/snackprint.rtf" />
</body>

</html>
