<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<cfquery name="qryincident" datasource="jdcdb">
	SELECT *
	FROM Incidents
	WHERE IncidentID = #url.IncidentID#
</cfquery>

<cfquery name="qryname" datasource="JDCDB"> 
	SELECT * 
	FROM Officers 
	WHERE UserID = #qryincident.reportedby# 
</cfquery>  

<cfset varFirstname ="#qryname.FirstName#">
<cfset varLastname ="#qryname.LastName#">
<cfset varIncidentDate = "#DateFormat(#qryIncident.IncidentDate#, "mm/dd/yyyy")#">
<cfset varStartTime = "#TimeFormat(#qryIncident.StartTime#, "HH:mm")#">
<cfset varEndTime = "#TimeFormat(#qryIncident.EndTime#, "HH:mm")#">
<cfset varResidentOneDOB = "#DateFormat(#qryIncident.ResidentOneDOB#, "mm/dd/yyyy")#">

<cfif qryIncident.ResidentTwoDOB ="1900-01-01 00:00:00">
	<cfset varResidentTwoDOB =" ">
<cfelse>
	<cfset varResidentTwoDOB = "#DateFormat(#qryIncident.ResidentTwoDOB#, "mm/dd/yyyy")#">
</cfif>

<cfif qryIncident.ResidentThreeDOB ="1900-01-01 00:00:00">
	<cfset varResidentThreeDOB =" ">
<cfelse>
	<cfset varResidentThreeDOB = "#DateFormat(#qryIncident.ResidentThreeDOB#, "mm/dd/yyyy")#">
</cfif>

<cfif qryIncident.FamilyNotifiedDate ="1900-01-01 00:00:00">
	<cfset varFamilyNotifiedDate =" ">
<cfelse>
	<cfset varFamilyNotifiedDate = "#DateFormat(#qryIncident.FamilyNotifiedDate#, "mm/dd/yyyy")#">
</cfif>
</head>

<body>
<CFHEADER NAME="CONTENT-DISPOSITION" VALUE="ATTACHMENT;FILENAME=IncidentReport-#qryincident.reportnumber#.RTF" />
<CFCONTENT TYPE="TEXT/RICHTEXT" /><cfinclude template="RTFS/incidentprint.rtf" />
</body>

</html>
