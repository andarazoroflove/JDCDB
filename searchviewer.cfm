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
.style7 {
	border-style: solid;
	border-width: 0px;
	background-color: #FFFFFF;
}
.style8 {
	color: #000000;
}
.style9 {
	border-style: solid;
	border-width: 1px;
	background-color: #FFFFFF;
		font-family: Arial, Helvetica, sans-serif;
}
.style10 {
	border-style: solid;
	border-width: 1px;
	font-family: Arial, Helvetica, sans-serif;
}
.style12 {
	border-style: solid;
	border-width: 1px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
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

<cfif IsDefined ("form.keyword")>
	<cfset varKeyword = '#form.keyword#' />	
<cfelse> 
	<cfset varKeyword = ' ' />
</cfif>

<cfquery name="qryofficerlist" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID != 28
	ORDER BY LastName
</cfquery>

<cfquery name="qrypreviousevents" datasource="jdcdb">
	SELECT *
	FROM EventLog
	WHERE DATE  >= '#form.beginningdate#' AND DATE <= '#form.endingdate#' AND EVENT LIKE '%#varKeyword#%'
	ORDER BY DATE ASC
</cfquery>

</head>

<body style="color: #FFFFFF; background-color: #FF0000">
<center>

<cfform method="post" action="eventinsert.cfm" id="eventform">

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='eventlog.cfm'" type="button" align="left"><i class="fa fa-pencil"></i> Daily Log</button>		
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
		<strong>Results for <cfoutput>#form.beginningdate# to #form.endingdate#</cfoutput></strong></center></span></strong><hr>
		<strong></strong>
		</td>
	</tr>
	<tr>
		<td colspan="4">
				<table style="width: 100%" cellspacing="0" cellpadding="0" class="style7">
			<tr class="style8">
				<td width="15%" class="style9"><strong>DATE</strong></td>
				<td width="10%" class="style9"><strong>TIME</strong></td>
				<td width="55%" class="style10"><strong>EVENT</strong></td>
				<td width="20%" class="style10"><strong>OFFICER</strong></td>
			</tr>
		<cfoutput>
		<cfloop query="qrypreviousevents">
			<cfquery name="qryusertoname" datasource="JDCDB">
				SELECT *
				FROM Officers
				WHERE UserID = #qrypreviousevents.Officer#
			</cfquery>
			<cfif qrypreviousevents.Edited EQ 1>
				<cfset varedited = '*' />	
			<cfelse> 
				<cfset varedited = ' ' />
			</cfif>
			<tr class="style8">
				<td width="15%" class="style12">#Dateformat("#qrypreviousevents.date#", "mm/dd/yyyy")#</td>
				<td width="10%" class="style12">#qrypreviousevents.time# #varedited#</td>
				<td width="55%" class="style12">#qrypreviousevents.event#</td>
				<td width="20%" class="style12">#qryusertoname.LastName#, #qryusertoname.FirstName#</td>
			</tr>
		</cfloop>
		</cfoutput>	
		</table>
		</td>
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
		<cfoutput><button class="btn" onclick="location.href='searchprint.cfm?begin=#form.beginningdate#&end=#form.endingdate#'" type="button" align="left"><i class="fa fa-print"></i> Print</button></cfoutput>
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
