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

<cfset varIncidentNumber = "#qryIncident.ReportNumber#">
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
		<td colspan="4"><strong><span class="style1"><center>Editing Incident Report <cfoutput>#varIncidentNumber#</cfoutput></center></span></strong>
		<cfif IsDefined('qryIncident.Edited') and qryIncident.Edited EQ "1">
		<cfset varEditTime = "#qryIncident.EditTime#">
		<cfset lenEditTime = left(varEditTime, len(varEditTime) -11)>
		<br><strong><cfoutput><center>This report was last edited on: #DateFormat(qryIncident.EditDate, "MM-DD-YYYY")# at #TimeFormat(#qryIncident.EditTime#, "HH:nn:ss")#</center></cfoutput></strong>
		</cfif>
		<hr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">
		
		<cfform method="post" action="incidenteditinsert.cfm?IncidentID=#url.IncidentID#" id="incidentform">
		<table style="width: 100%" class="style7">
			<tr>
				<td style="width: 16%" class="style8"><strong>Date:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#DateFormat(qryIncident.IncidentDate, "MM/DD/YYYY")#</cfoutput></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td class="style8" colspan="2"><strong>Incident Number:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#varIncidentNumber#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Report By:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput>#qryReportedBy.Lastname#, #qryReportedBy.Firstname#</cfoutput></td>
				<td style="width: 16%" class="style8"><strong>Start Time:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput><input type="time" name="starttime" id="starttime" value="#TimeFormat(#qryIncident.StartTime#, "HH:nn:ss")#" required></cfoutput></td>
				<td style="width: 16%" class="style8"><strong>End Time:</strong></td>
				<td style="width: 16%" class="style8"><cfoutput><input type="time" name="endtime" id="endtime" value="#TimeFormat(#qryIncident.EndTime#, "HH:nn:ss")#" required></cfoutput></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Supervisor:</strong></td>
				<td style="width: 16%" class="style8"><input type="text" name="supervisoron" id="supervisoron" <cfoutput>value="#qryIncident.SupervisorOn#"</cfoutput>></td>
				<td style="width: 16%" class="style8"><strong>Staff On:</strong></td>
				<td class="style8" colspan="3"><input type="text" name="staffonduty" id="staffonduty" <cfoutput>value="#qryIncident.StaffOnDuty#"</cfoutput> size="40"></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Location:</strong></td>
				<td style="width: 16%" class="style8"><input type="text" name="location" id="location" <cfoutput>value="#qryIncident.location#"</cfoutput>></td>
				<td class="style8" colspan="4"><strong>Incident Type: </strong><input type="text" name="incidenttype" id="incidenttype" size="37" <cfoutput>value="#qryIncident.IncidentType#"</cfoutput>></td>
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
				<td class="style8" colspan="2"><input type="text" name="residentonename" id="residentonename" size="30" <cfoutput>value="#qryIncident.ResidentOneName#"</cfoutput>></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentOneSex') and qryIncident.ResidentOneSex EQ "M">
				<select name="residentonesex" id="residentonesex">
					<option value="NONE"></option>	
					<option value="M" selected>M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneSex') and qryIncident.ResidentOneSex EQ "F">
				<select name="residentonesex" id="residentonesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F" selected>F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneSex') and qryIncident.ResidentOneSex EQ "NB">
				<select name="residentonesex" id="residentonesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB" selected>NB</option>
				</select>
				<cfelse>
				<select name="residentonesex" id="residentonesex">
					<option value="NONE" selected></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</cfif>
				</td>
				<td style="width: 16%" class="style8"><cfoutput><input type="date" name="residentonedob" id="residentonedob" value="#DateFormat(#qryincident.ResidentOneDOB#, "yyyy-mm-dd")#"></cfoutput></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Bannock">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock" selected>Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Bear Lake">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake" selected>Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Caribou">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou" selected>Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Franklin">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin" selected>Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Oneida">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida" selected>Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Power">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power" selected>Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentOneCounty') and qryIncident.ResidentOneCounty EQ "Other">
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other" selected>Other</option>
				</select>
				<cfelse>
				<select name="residentonecounty" id="residentonecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>								
				</cfif>				
				</td>
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
				<td class="style8" colspan="2"><input type="text" name="residenttwoname" id="residenttwoname" size="30" <cfoutput>value="#qryIncident.ResidentTwoName#"</cfoutput>></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentTwoSex') and qryIncident.ResidentTwoSex EQ "M">
				<select name="residenttwosex" id="residenttwosex">
					<option value="NONE"></option>	
					<option value="M" selected>M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoSex') and qryIncident.ResidentTwoSex EQ "F">
				<select name="residenttwosex" id="residenttwosex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F" selected>F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoSex') and qryIncident.ResidentTwoSex EQ "NB">
				<select name="residenttwosex" id="residenttwosex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB" selected>NB</option>
				</select>
				<cfelse>
				<select name="residenttwosex" id="residenttwosex">
					<option value="NONE" selected></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</cfif>
				</td>
				<td style="width: 16%" class="style8"><cfoutput><input type="date" name="residenttwodob" id="residenttwodob" value="#DateFormat(#qryIncident.ResidentTwoDOB#, "yyyy-mm-dd")#"></cfoutput></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Bannock">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock" selected>Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Bear Lake">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake" selected>Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Caribou">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou" selected>Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Franklin">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin" selected>Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Oneida">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida" selected>Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Power">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power" selected>Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentTwoCounty') and qryIncident.ResidentTwoCounty EQ "Other">
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other" selected>Other</option>
				</select>
				<cfelse>
				<select name="residenttwocounty" id="residenttwocounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>								
				</cfif>
				</td>
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
				<td class="style8" colspan="2"><input type="text" name="residentthreename" id="residentthreename" size="30" <cfoutput>value="#qryIncident.ResidentThreeName#"</cfoutput>></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentThreeSex') and qryIncident.ResidentThreeSex EQ "M">
				<select name="residentthreesex" id="residentthreesex">
					<option value="NONE"></option>	
					<option value="M" selected>M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentThreeSex') and qryIncident.ResidentThreeSex EQ "F">
				<select name="residentthreesex" id="residentthreesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F" selected>F</option>
					<option value="NB">NB</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentThreeSex') and qryIncident.ResidentThreeSex EQ "NB">
				<select name="residentthreesex" id="residentthreesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB" selected>NB</option>
				</select>
				<cfelse>
				<select name="residentthreesex" id="residentthreesex">
					<option value="NONE" selected></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</cfif>
				</td>
				<td style="width: 16%" class="style8"><cfoutput><input type="date" name="residentthreedob" id="residentthreedob" value="#DateFormat(#qryIncident.ResidentThreeDOB#, "yyyy-mm-dd")#"></cfoutput></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Bannock">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock" selected>Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Bear Lake">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake" selected>Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Caribou">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou" selected>Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Franklin">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin" selected>Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Oneida">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida" selected>Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Power">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power" selected>Power</option>
					<option value="Other">Other</option>
				</select>
				<cfelseif IsDefined('qryIncident.ResidentthreeCounty') and qryIncident.ResidentthreeCounty EQ "Other">
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other" selected>Other</option>
				</select>
				<cfelse>
				<select name="residentthreecounty" id="residentthreecounty">
					<option value="Bannock">Bannock</option>
					<option value="Bear Lake">Bear Lake</option>
					<option value="Caribou">Caribou</option>
					<option value="Franklin">Franklin</option>
					<option value="Oneida">Oneida</option>
					<option value="Power">Power</option>
					<option value="Other">Other</option>
				</select>								
				</cfif>
				</td>
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
				<td class="style8" colspan="2"><input type="text" name="witnessonename" id="witnessonename" size="30" <cfoutput>value="#qryIncident.WitnessOneName#"</cfoutput>></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessoneinfo" id="witnessoneinfo" cols="40" rows="2" wrap="soft"><cfoutput>#qryIncident.WitnessOneInfo#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnesstwoname" id="witnesstwoname" size="30" <cfoutput>value="#qryIncident.WitnessTwoName#"</cfoutput>></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnesstwoinfo" id="witnesstwoinfo" cols="40" rows="2" wrap="soft"><cfoutput>#qryIncident.WitnessTwoInfo#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnessthreename" id="witnessthreename" size="30" <cfoutput>value="#qryIncident.WitnessThreeName#"</cfoutput>></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessthreeinfo" id="witnessthreeinfo" cols="40" rows="2" wrap="soft"><cfoutput>#qryIncident.WitnessThreeInfo#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnessfourname" id="witnessfourname" size="30" <cfoutput>value="#qryIncident.WitnessFourName#"</cfoutput>></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessfourinfo" id="witnessfourinfo" cols="40" rows="2" wrap="soft"><cfoutput>#qryIncident.WitnessFourName#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any Physical 
				Evidence involved in the Incident:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="physicalevidence" id="physicalevicence" cols="60" rows="2" wrap="soft"><cfoutput>#qryIncident.PhysicalEvidence#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe efforts made to 
				verbally de-escalate resident(s): </strong><em>what steps of 
				verbal judo used?</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="verbalefforts" id="verbalefforts" cols="60" rows="2" wrap="soft"><cfoutput>#qryIncident.VerbalEfforts#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe justification 
				for use of force:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="useofforce" id="useofforce" cols="60" rows="2" wrap="soft"><cfoutput>#qryIncident.UseOfForce#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any injuries to 
				resident(s) and/or staff:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="injurydescription" id="injurydescription" cols="60" rows="2" wrap="soft"><cfoutput>#qryIncident.InjuryDescription#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe treatment given:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="treatmentgiven" id="treatmentgiven" cols="60" rows="2" wrap="soft"><cfoutput>#qryIncident.TreatmentGiven#</cfoutput></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="4"><strong>Was an Ambulance Called 
				or did staff transport to the hospital?</strong></td>
				<td class="style8" colspan="2">
				<cfif IsDefined('qryIncident.Ambulance') and qryIncident.Ambulance EQ "Ambulance">
				<select name="ambulance" id="ambulance">
					<option value="No">N/A</option>	
					<option value="Ambulance" selected>Ambulance</option>
					<option value="Staff Transport">Staff Transport</option>
				</select>
				<cfelseif IsDefined('qryIncident.Ambulance') and qryIncident.Ambulance EQ "Staff Transport">
				<select name="ambulance" id="ambulance">
					<option value="No">N/A</option>	
					<option value="Ambulance">Ambulance</option>
					<option value="Staff Transport" selected>Staff Transport</option>
				</select>
				<cfelse>
				<select name="ambulance" id="ambulance">
					<option value="No" selected>N/A</option>	
					<option value="Ambulance">Ambulance</option>
					<option value="Staff Transport">Staff Transport</option>
				</select>
				</cfif>
				</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Was family notified?</strong></td>
				<td style="width: 16%" class="style8">
				<cfif IsDefined('qryIncident.FamilyNotified') and qryIncident.FamilyNotified EQ "No">
				<select name="familynotified" id="familynotified">
					<option value="No" selected>No</option>	
					<option value="Yes">Yes</option>
				</select>
				<cfelseif IsDefined('qryIncident.FamilyNotified') and qryIncident.FamilyNotified EQ "Yes">
				<select name="familynotified" id="familynotified">
					<option value="No">No</option>	
					<option value="Yes" selected>Yes</option>
				</select>
				<cfelse>
				<select name="familynotified" id="familynotified">
					<option value="No">No</option>	
					<option value="Yes">Yes</option>
					</select>
				</cfif>
				</td>
				<td style="width: 16%" class="style8"><strong>If so, when?</strong></td>
				<td style="width: 16%" class="style8"><cfoutput><input type="date" name="FamilyNotifiedDate" id="FamilyNotifiedDate" value="#DateFormat(#qryIncident.FamilyNotifiedDate#, "yyyy-mm-dd")#"></cfoutput></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Complete description of 
				the incident: </strong><em>Include who, what, why, where, when, 
				and how</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="completedescription" id="completedescription" cols="60" rows="10" wrap="soft"><cfoutput>#qryIncident.CompleteDescription#</cfoutput></textarea></td>
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
		<br>
		<input type="submit" value="Update Incident" />
		</cfform>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>

</center>
</body>

</html>
