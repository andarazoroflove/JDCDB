<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Juvenile Detention Center</title>
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
	color: #FFFF00;
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
a:hover {
	color: yellow
}
a:visited {
	color: white
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
  background-color: Blue;
}
.style6 {
	border-width: 0px;
}
.style7 {
	border-style: solid;
	border-width: 1px;
}
</style>

<cfif IsDefined ("form.keyword")>
	<cfset varKeyword = '#form.keyword#' />	
<cfelse> 
	<cfset varKeyword = ' ' />
</cfif>

<cfquery name="qryIncident" datasource="jdcdb">
	SELECT *
	FROM Incidents
	WHERE INCIDENTDATE  >= '#form.BeginningDate#' AND INCIDENTDATE <= '#form.endingdate#' AND INCIDENTTYPE LIKE '%#varKeyword#%'
	ORDER BY INCIDENTDATE DESC
</cfquery>

</head>

<body style="color: #FFFFFF; background-color: #3366FF">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='incident.cfm'" type="button" align="left"><i class="fa fa-bomb"></i> Incident Reports</button>		
		<button class="btn" onclick="location.href='searchincident.cfm'" type="button" align="left"><i class="fa fa-search"></i> Search Incidents</button>
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
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4"><strong><span class="style1"><center>Incident Report 
		Search Results</center></span></strong>
		<forhr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2"></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2">
		<table style="width: 100%" class="style6">
			<tr>
				<td style="width: 15%" class="style7"><strong>&nbsp;Number</strong></td>
				<td style="width: 15%" class="style7"><strong>Date</strong></td>
				<td style="width: 50%" class="style7"><strong>Incident Type</strong></td>
				<td style="width: 20%" class="style7"><strong>Reported By</strong></td>
			</tr>
			<cfloop query="qryIncident">
			<cfoutput>
			<tr>
				<td style="width: 15%" class="style7"><cfoutput><a href="incidentview.cfm?IncidentID=#qryIncident.IncidentID#">#qryIncident.ReportNumber#</a></cfoutput></td>
				<td style="width: 15%" class="style7">#DateFormat(qryIncident.IncidentDate, "MM/DD/YYYY")#</td>
				<td style="width: 50%" class="style7">#qryIncident.IncidentType#</td>
				<cfquery name="qryusertoname" datasource="JDCDB">
				SELECT *
				FROM Officers
				WHERE UserID = #qryIncident.ReportedBy#
				</cfquery>
				<td style="width: 20%" class="style7">#qryusertoname.LastName#, #qryusertoname.FirstName#</td>
			</tr>
			</cfoutput>
			</cfloop>
		</table>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>

</center>
</body>

</html>
