<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>
</head>
<body>

<cfdump var="#form#">

<cfif IsDefined ("form.reportedby")>
	<cfset varofficer = '#form.reportedby#' />	
<cfelse> 
	<cfset varofficer = '28' />
</cfif>

<cfquery name="qryOfficerID" datasource="JDCDB">
	SELECT *
	FROM Officers
	WHERE UserID = #varofficer#
</cfquery>


<cfquery name="qryIncidentInsert" datasource="JDCDB" result="result">
	INSERT INTO Incidents
	(IncidentDate,ReportedBy,StartTime,EndTime,SupervisorOn,StaffOnDuty,Location,IncidentType,ResidentOneName,ResidentOneSex,ResidentOneDOB,ResidentOneCounty,ResidentTwoName,ResidentTwoSex,ResidentTwoDOB,ResidentTwoCounty,ResidentThreeName,ResidentThreeSex,ResidentThreeDOB,ResidentThreeCounty,WitnessOneName,WitnessOneInfo,WitnessTwoName,WitnessTwoInfo,WitnessThreeName,WitnessThreeInfo,WitnessFourName,WitnessFourInfo,PhysicalEvidence,VerbalEfforts,UseOfForce,InjuryDescription,TreatmentGiven,Ambulance,FamilyNotified,FamilyNotifiedDate,CompleteDescription)
	VALUES
	('#form.IncidentDate#','#qryOfficerID.UserID#','#form.StartTime#','#form.EndTime#','#form.SupervisorOn#','#form.StaffOnDuty#','#form.Location#','#form.IncidentType#','#form.ResidentOneName#','#form.ResidentOneSex#','#form.ResidentOneDOB#','#form.ResidentOneCounty#','#form.ResidentTwoName#','#form.ResidentTwoSex#','#form.ResidentTwoDOB#','#form.ResidentTwoCounty#','#form.ResidentThreeName#','#form.ResidentThreeSex#','#form.ResidentThreeDOB#','#form.ResidentThreeCounty#','#form.WitnessOneName#','#form.WitnessOneInfo#','#form.WitnessTwoName#','#form.WitnessTwoInfo#','#form.WitnessThreeName#','#form.WitnessThreeInfo#','#form.WitnessFourName#','#form.WitnessFourInfo#','#form.PhysicalEvidence#','#form.VerbalEfforts#','#form.UseOfForce#','#form.InjuryDescription#','#form.TreatmentGiven#','#form.Ambulance#','#form.FamilyNotified#','#form.FamilyNotifiedDate#','#form.CompleteDescription#')
</cfquery>
<cfquery name="qryDateReturn" datasource="JDCDB">
	SELECT *
	FROM Incidents
	WHERE IncidentID = #result.IDENTITYCOL#
</cfquery>
<cfquery name="qryReportNumber" datasource="JDCDB">
	UPDATE Incidents
	SET
	ReportNumber = '#DateFormat(qryDateReturn.IncidentDate, "yyyymmdd")#-#result.IDENTITYCOL#'
	WHERE IncidentID = #result.IDENTITYCOL#
</cfquery>
<cflocation url="incidentview.cfm?IncidentID=#result.IDENTITYCOL#" />
</body>
