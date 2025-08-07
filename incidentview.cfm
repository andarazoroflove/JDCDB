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
  background-color: Blue;
}
.style7 {
	background-color: #FFFFFF;
}
.style8 {
	font-size: small;
}
</style>

<cfquery name="qryIncident" datasource="jdcdb">
	SELECT *
	FROM Incidents
	WHERE IncidentID = #url.IncidentID#
</cfquery>

<cfquery name="qryofficerlist" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID != 28
	ORDER BY LastName
</cfquery>

<cfquery name="qryReportedBy" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID = #qryIncident.ReportedBy#
</cfquery>

<cfset varIncidentNumber = "#DateFormat(Now(), "yyyymmdd")#-#url.IncidentID#">
<cfset varStartTime = "#qryIncident.StartTime#">
<cfset lenStartTime = left(varStartTime, len(varStartTime) -11)>
<cfset varEndTime = "#qryIncident.EndTime#">
<cfset lenEndTime = left(varEndTime, len(varEndTime) -11)>

<cfset varResidentOneDOB = "#qryIncident.ResidentOneDOB#">
<cfset lenResidentOneDOB = left(varResidentOneDOB, len(varResidentOneDOB) -11)>
<cfset varResidentTwoDOB = "#qryIncident.ResidentTwoDOB#">
<cfset lenResidentTwoDOB = left(varResidentTwoDOB, len(varResidentTwoDOB) -11)>
<cfset varResidentThreeDOB = "#qryIncident.ResidentThreeDOB#">
<cfset lenResidentThreeDOB = left(varResidentThreeDOB, len(varResidentThreeDOB) -11)>

<cfset varFamilyNotifiedDate = "#qryIncident.FamilyNotifiedDate#">
<cfset lenFamilyNotifiedDate = left(varFamilyNotifiedDate, len(varFamilyNotifiedDate) -11)>

</head>

<body style="color: #FFFFFF; background-color: #3366FF">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='incident.cfm'" type="button" align="left"><i class="fa fa-bomb"></i> Incident Reports</button>		
		<button class="btn" onclick="location.href='searchincident.cfm'" type="button" align="left"><i class="fa fa-search"></i> Search Incidents</button>
		<cfoutput><button class="btn" onclick="location.href='incidentedit.cfm?IncidentID=#url.IncidentID#'" type="button" align="left"><i class="fa fa-pencil"></i> Edit Incident</button></cfoutput>
		<cfoutput><button class="btn" onclick="location.href='printincident.cfm?IncidentID=#url.IncidentID#'" type="button" align="left"><i class="fa fa-print"></i>Print Incident</button></cfoutput>

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
		<td colspan="4"><strong><span class="style1"><center>Viewing Incident Report <cfoutput>#varIncidentNumber#</cfoutput></center></span></strong>
		<cfif IsDefined('qryIncident.Edited') and qryIncident.Edited EQ "1">
		<cfset varEditTime = "#qryIncident.EditTime#">
		<cfset lenEditTime = left(varEditTime, len(varEditTime) -11)>
		<br><strong><cfoutput><center>This report was last edited on: #DateFormat(qryIncident.EditDate, "MM-DD-YYYY")# at #TimeFormat(#qryIncident.EditTime#, "HH:nn:ss")#</center></cfoutput></strong>
		</cfif>
		<forhr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">
		<cfoutput>
		<table style="width: 100%" class="style7">
			<tr>
				<td style="width: 16%" class="style8"><strong>Date:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#DateFormat(#qryIncident.IncidentDate#, "MM/DD/YYYY")#</cfoutput></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td class="style8" colspan="2"><strong>Incident Number:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#varIncidentNumber#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Report By:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#qryReportedBy.Lastname#, #qryReportedBy.Firstname#</cfoutput></td>
				<td style="width: 16%" class="style8"><strong>Start Time:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#TimeFormat(#qryIncident.StartTime#, "HH:nn:ss")#</cfoutput></td>
				<td style="width: 16%" class="style8"><strong>End Time:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#TimeFormat(#qryIncident.EndTime#, "HH:nn:ss")#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Supervisor:</strong></td>
				<td style="width: 16%" class="style8">#qryIncident.SupervisorOn#</td>
				<td style="width: 16%" class="style8"><strong>Staff On:</strong></td>
				<td class="style8" colspan="3">#qryIncident.StaffOnDuty#</td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Location:</strong></td>
				<td style="width: 16%" class="style8">#qryIncident.location#</td>
				<td class="style8" colspan="4"><strong>Incident Type: </strong>#qryIncident.IncidentType#</td>
			</tr>
			<tr>
				<td style="height: 23px;" class="style8" colspan="3"><strong>
				Resident(s) Involved: </strong><em>use full names</em></td>
				<td style="width: 16%; height: 23px;" class="style8"></td>
				<td style="width: 16%; height: 23px;" class="style8"></td>
				<td style="width: 16%; height: 23px;" class="style8"></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Name:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8"><strong>Sex:</strong></td>
				<td style="width: 16%" class="style8"><strong>Date of Birth</strong></td>
				<td style="width: 16%" class="style8"><strong>County:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.ResidentOneName#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentOneSex#</td>
				<td style="width: 16%" class="style8">#DateFormat(#qryIncident.ResidentOneDOB#, "MM/DD/YYYY")#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentOneCounty#</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Name:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8"><strong>Sex:</strong></td>
				<td style="width: 16%" class="style8"><strong>Date of Birth</strong></td>
				<td style="width: 16%" class="style8"><strong>County:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.ResidentTwoName#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentTwoSex#</td>
				<td style="width: 16%" class="style8">#DateFormat(#qryIncident.ResidentTwoDOB#, "MM/DD/YYYY")#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentTwoCounty#</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Name:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8"><strong>Sex:</strong></td>
				<td style="width: 16%" class="style8"><strong>Date of Birth</strong></td>
				<td style="width: 16%" class="style8"><strong>County:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.ResidentThreeName#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentThreeSex#</td>
				<td style="width: 16%" class="style8">#DateFormat(#qryIncident.ResidentThreeDOB#, "MM/DD/YYYY")#</td>
				<td style="width: 16%" class="style8">#qryIncident.ResidentThreeCounty#</td>
				<td style="width: 16%" class="style8">&nbsp;</td>			
			</tr>
			<tr>
				<td class="style8" colspan="4"><strong>Witness(es): </strong>
				<em>include witness statements if necessary</em></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.WitnessOneName#</td>
				<td class="style8" colspan="4">#qryIncident.WitnessOneInfo#</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.WitnessTwoName#</td>
				<td class="style8" colspan="4">#qryIncident.WitnessTwoInfo#</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.WitnessThreeName#</td>
				<td class="style8" colspan="4">#qryIncident.WitnessThreeInfo#</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2">#qryIncident.WitnessFourName#</td>
				<td class="style8" colspan="4">#qryIncident.WitnessFourInfo#</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any Physical 
				Evidence involved in the Incident:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.PhysicalEvidence#</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe efforts made to 
				verbally de-escalate resident(s): </strong><em>what steps of 
				verbal judo used?</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.VerbalEfforts#</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe justification 
				for use of force:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.UseOfForce#</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any injuries to 
				resident(s) and/or staff:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.InjuryDescription#</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe treatment given:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.TreatmentGiven#</td>
			</tr>
			<tr>
				<td class="style8" colspan="4"><strong>Was an Ambulance Called 
				or did staff transport to the hospital?</strong></td>
				<td class="style8" colspan="2">#qryIncident.Ambulance#</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Was family notified?</strong></td>
				<td style="width: 16%" class="style8">#qryIncident.FamilyNotified#</td>
				<td style="width: 16%" class="style8"><strong>If so, when?</strong></td>
				<cfif #qryIncident.FamilyNotified# EQ "YES">
				<td style="width: 16%" class="style8">#DateFormat(#qryIncident.FamilyNotifiedDate#, "MM/DD/YYYY")#</td>
				</cfif>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Complete description of 
				the incident: </strong><em>Include who, what, why, where, when, 
				and how</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6">#qryIncident.CompleteDescription#</td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2"></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>
</cfoutput>
</center>
</body>

</html>
