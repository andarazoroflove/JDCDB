<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<cfquery name="qryevent" datasource="jdcdb">
	SELECT *
	FROM EventLog
	WHERE DATE  >= '#url.begin#' AND DATE <= '#url.end#'
	ORDER BY DATE ASC
</cfquery>

</head>

<body>
<CFHEADER NAME="CONTENT-DISPOSITION" VALUE="ATTACHMENT;FILENAME=EventLog-#url.begin#.through.#url.end#.RTF" />
<CFCONTENT TYPE="TEXT/RICHTEXT" /><cfinclude template="RTFS/eventprint.rtf" />
</body>

</html>
