<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>
</head>
<body>

<cfquery name="qryIncidentInsert" datasource="JDCDB" result="result">
	UPDATE Incidents
	SET
	EditDate = '#DateFormat(Now(), "MM-DD-YYYY")#'
	,EditTime = '#TimeFormat(Now(), "HH:mm:ss")#'
	,Edited = '1'
	,StartTime = '#form.StartTime#'
	,EndTime = '#form.EndTime#'
	,SupervisorOn = '#form.SupervisorOn#'
	,StaffOnDuty = '#form.StaffOnDuty#'
	,Location = '#form.Location#'
	,IncidentType = '#form.IncidentType#'
	,ResidentOneName = '#form.ResidentOneName#'
	,ResidentOneSex = '#form.ResidentOneSex#'
	,ResidentOneDOB = '#form.ResidentOneDOB#'
	,ResidentOneCounty = '#form.ResidentOneCounty#'
	,ResidentTwoName = '#form.ResidentTwoName#'
	,ResidentTwoSex = '#form.ResidentTwoSex#'
	,ResidentTwoDOB = '#form.ResidentTwoDOB#'
	,ResidentTwoCounty = '#form.ResidentTwoCounty#'
	,ResidentThreeName = '#form.ResidentThreeName#'
	,ResidentThreeSex = '#form.ResidentThreeSex#'
	,ResidentThreeDOB = '#form.ResidentThreeDOB#'
	,ResidentThreeCounty = '#form.ResidentThreeCounty#'
	,WitnessOneName = '#form.WitnessOneName#'
	,WitnessOneInfo = '#form.WitnessOneInfo#'
	,WitnessTwoName = '#form.WitnessTwoName#'
	,WitnessTwoInfo = '#form.WitnessTwoInfo#'
 	,WitnessThreeName = '#form.WitnessThreeName#'
 	,WitnessThreeInfo = '#form.WitnessThreeInfo#'
	,WitnessFourName = '#form.WitnessFourName#'
	,WitnessFourInfo = '#form.WitnessFourInfo#'
	,PhysicalEvidence = '#form.PhysicalEvidence#'
	,VerbalEfforts = '#form.VerbalEfforts#'
	,UseOfForce = '#form.UseOfForce#'
	,InjuryDescription = '#form.InjuryDescription#'
	,TreatmentGiven = '#form.TreatmentGiven#'
	,Ambulance = '#form.Ambulance#'
	,FamilyNotified = '#form.FamilyNotified#'
	,FamilyNotifiedDate = '#form.FamilyNotifiedDate#'
	,CompleteDescription = '#form.CompleteDescription#'
	WHERE IncidentID = #url.IncidentID#	
</cfquery>
<cflocation url="incidentview.cfm?IncidentID=#url.IncidentID#" />
</body>
