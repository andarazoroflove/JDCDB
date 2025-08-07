<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Daily Log Entry</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
a {
	color: #FFFFFF;
}
a:visited {
	color: #FFFFFF;
}
a:active {
	color: #FFFFFF;
}
a:hover {
	color: #FFFFFF;
}
.style1 {
	font-size: xx-large;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	color: #000000;
}
.style3 {
	font-family: Arial, Helvetica, sans-serif;
}
.style5 {
	background-color: #000000;
}
.blacknounderline {
	text-decoration: none;
	color: #000000;
}
a:hover {
	color: black
}
a:visited {
	color: black
}
.btn {
  background-color: Black;
  border: none;
  color: white;
  padding: 4px 8px;
  font-size: 14px;
  cursor: pointer;
}
.btn:hover {
  background-color: Red;
}
</style>

<cfquery name="qryofficerlist" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID != 28
	ORDER BY LastName
</cfquery>

<cfquery name="qrypreviousevents" datasource="jdcdb">
	SELECT *
	FROM EventLog
	WHERE EventID = #url.event#
</cfquery>

<cfquery name="qryofficerselect" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID = #qrypreviousevents.officer#
</cfquery>

</head>

<body style="color: #FFFFFF; background-color: #FF0000">
<center>

<cfform method="post" action="eventeditinsert.cfm" id="eventform">

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='eventlog.cfm'" type="button" align="left"><i class="fa fa-home"></i> Daily Log</button>		
		<button class="btn" onclick="location.href='searchlogs.cfm'" type="button" align="left"><i class="fa fa-search"></i> Search Logs</button>
		<button class="btn" onclick="location.href='fielddirectives.cfm'" type="button" align="left"><i class="fa fa-sticky-note"></i> Field Directives</button>
		</td>
	</tr>
	<tr>
		<td class="style5" colspan="2">&nbsp;</td>
		<td style="width: 25%" class="style5">&nbsp;</td>
		<td style="width: 25%" class="style5">&nbsp;</td>
		<td style="width: 25%" class="style5">&nbsp;</td>
		<td style="width: 20%" class="style5">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5" rowspan="2">&nbsp;</td>
		<td style="width: 2%" rowspan="2">&nbsp;</td>
		<td colspan="4"><strong><span class="style1"><center>
		<strong>Event Log Editor</strong></center></span></strong><hr>
		<strong></strong>
		</td>
	</tr>
	<tr>
		<td colspan="4">

	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2"><hr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2">
		<cfinput type="hidden" value="#qrypreviousevents.EventID#" name="eventid">
		<strong>TIME:</strong> <cfinput type="Text" name="Time" size="5" value="#qrypreviousevents.time#">
		<strong>OFFICER:</strong>
		<cfselect name="officer">
		<option disabled selected value>Choose an Officer</option>
		<cfloop query="qryofficerlist">
			<cfoutput><option value="#qryofficerlist.UserID#" size="30" required>#qryofficerlist.LastName#, #qryofficerlist.FirstName#</option></cfoutput>
		</cfloop>
		</cfselect> 
		<br>
		<strong>EVENT:</strong><br>
		<textarea form="eventform" name="eventtext" id="eventtext" cols="85" rows="5" wrap="soft"><cfoutput>#qrypreviousevents.event#</cfoutput></textarea>
		<input type="submit" value="Update Event" />
		
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>
</cfform>
</center>
</body>
<cfinclude template="footer.cfm">
</html>
