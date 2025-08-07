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
<cfquery name="qrySites" datasource="jdcdb">
	SELECT *
	FROM Sites
	WHERE ACTIVE != 'FALSE'
	ORDER BY SITENAME DESC
</cfquery>

<cfset varToday = #DateFormat(Now(), "yyyy-mm-dd")#>
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
		<td colspan="4"><strong><span class="style1"><center>Create an Incident 
		Report</center></span></strong><hr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">
		
		<cfform method="post" action="incidentinsert.cfm" id="incidentform">
		<table style="width: 100%" class="style7">
			<tr>
				<td style="width: 16%" class="style8"><strong>Date:</strong></td>
				<td style="width: 16%" class="style8"><input type="date" name="incidentdate" id="incidentdate" <cfoutput>value="#varToday#"</cfoutput> required></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td class="style8" colspan="2"><strong>Incident Number:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Report By:</strong></td>
				<td style="width: 16%" class="style8">
				<cfquery name="qryofficerlist" datasource="jdcdb">
					SELECT *
					FROM Officers
					WHERE UserID != 28
					ORDER BY LastName
				</cfquery>
				<cfselect name="reportedby">
				<option disabled selected value>Choose an Officer</option>
				<cfloop query="qryofficerlist">
					<cfoutput><option value="#qryofficerlist.UserID#" size="30" required>#qryofficerlist.LastName#, #qryofficerlist.FirstName#</option></cfoutput>
				</cfloop>
				</cfselect></td>
				<td style="width: 16%" class="style8"><strong>Start Time:</strong></td>
				<td style="width: 16%" class="style8"><input type="time" name="starttime" id="starttime" required></td>
				<td style="width: 16%" class="style8"><strong>End Time:</strong></td>
				<td style="width: 16%" class="style8"><input type="time" name="endtime" id="endtime" required></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Supervisor:</strong></td>
				<td style="width: 16%" class="style8"><input type="text" name="supervisoron" id="supervisoron"></td>
				<td style="width: 16%" class="style8"><strong>Staff On:</strong></td>
				<td class="style8" colspan="3"><input type="text" name="staffonduty" id="staffonduty" size="40"></td>
			</tr>
			<tr>
				<td style="width: 16%" class="style8"><strong>Location:</strong></td>
				<td style="width: 16%" class="style8"><input type="text" name="location" id="location"></td>
				<td class="style8" colspan="4"><strong>Incident Type: </strong><input type="text" name="incidenttype" id="incidenttype" size="37"></td>
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
				<td class="style8" colspan="2"><input type="text" name="residentonename" id="residentonename" size="30"></td>
				<td style="width: 16%" class="style8">
				<select name="residentonesex" id="residentonesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</td>
				<td style="width: 16%" class="style8"><input type="date" name="residentonedob" id="residentonedob"></td>
				<td style="width: 16%" class="style8">
				<select name="ResidentOneCounty">
				<option disabled selected value>Choose a County</option>
				<cfloop query="qrySites">
				<cfoutput><option value="#qrySites.SiteName#" size="30">#qrySites.SiteName#</option></cfoutput>
				</cfloop>
				</select>				</td>
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
				<td class="style8" colspan="2"><input type="text" name="residenttwoname" id="residenttwoname" size="30"></td>
				<td style="width: 16%" class="style8">
				<select name="residenttwosex" id="residenttwosex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</td>
				<td style="width: 16%" class="style8"><input type="date" name="residenttwodob" id="residenttwodob"></td>
				<td style="width: 16%" class="style8">
				<select name="ResidentTwoCounty">
				<option disabled selected value>Choose a County</option>
				<cfloop query="qrySites">
				<cfoutput><option value="#qrySites.SiteName#" size="30">#qrySites.SiteName#</option></cfoutput>
				</cfloop>
				</select></td>
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
				<td class="style8" colspan="2"><input type="text" name="residentthreename" id="residentthreename" size="30"></td>
				<td style="width: 16%" class="style8">
				<select name="residentthreesex" id="residentthreesex">
					<option value="NONE"></option>	
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NB">NB</option>
				</select>
				</td>
				<td style="width: 16%" class="style8"><input type="date" name="residentthreedob" id="residentthreedob"></td>
				<td style="width: 16%" class="style8">
				<select name="ResidentThreeCounty">
				<option disabled selected value>Choose a County</option>
				<cfloop query="qrySites">
				<cfoutput><option value="#qrySites.SiteName#" size="30">#qrySites.SiteName#</option></cfoutput>
				</cfloop>
				</select>				</td>
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
				<td class="style8" colspan="2"><input type="text" name="witnessonename" id="witnessonename" size="30"></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessoneinfo" id="witnessoneinfo" cols="40" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnesstwoname" id="witnesstwoname" size="30"></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnesstwoinfo" id="witnesstwoinfo" cols="40" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnessthreename" id="witnessthreename" size="30"></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessthreeinfo" id="witnessthreeinfo" cols="40" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Name:</strong></td>
				<td class="style8" colspan="2"><strong>Statement/Info:</strong></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><input type="text" name="witnessfourname" id="witnessfourname" size="30"></td>
				<td class="style8" colspan="4"><textarea form="incidentform" name="witnessfourinfo" id="witnessfourinfo" cols="40" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any Physical 
				Evidence involved in the Incident:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="physicalevidence" id="physicalevicence" cols="60" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe efforts made to 
				verbally de-escalate resident(s): </strong><em>what steps of 
				verbal judo used?</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="verbalefforts" id="verbalefforts" cols="60" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe justification 
				for use of force:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="useofforce" id="useofforce" cols="60" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe any injuries to 
				resident(s) and/or staff:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="injurydescription" id="injurydescription" cols="60" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Describe treatment given:</strong></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="treatmentgiven" id="treatmentgiven" cols="60" rows="2" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style8" colspan="4"><strong>Was an Ambulance Called 
				or did staff transport to the hospital?</strong></td>
				<td class="style8" colspan="2">
				<select name="ambulance" id="ambulance">
					<option value="No">N/A</option>	
					<option value="Ambulance">Ambulance</option>
					<option value="Staff Transport">Staff Transport</option>
				</select>
				</td>
			</tr>
			<tr>
				<td class="style8" colspan="2"><strong>Was family notified?</strong></td>
				<td style="width: 16%" class="style8">
				<select name="familynotified" id="familynotified">
					<option value="No">No</option>	
					<option value="Yes">Yes</option>
				</select>
				</td>
				<td style="width: 16%" class="style8"><strong>If so, when?</strong></td>
				<td style="width: 16%" class="style8"><input type="date" name="FamilyNotifiedDate" id="FamilyNotifiedDate"></td>
				<td style="width: 16%" class="style8">&nbsp;</td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><strong>Complete description of 
				the incident: </strong><em>Include who, what, why, where, when, 
				and how</em></td>
			</tr>
			<tr>
				<td class="style8" colspan="6"><textarea form="incidentform" name="completedescription" id="completedescription" cols="60" rows="10" wrap="soft"></textarea></td>
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
		<input type="submit" value="Log Incident" />
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
