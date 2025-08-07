<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>

<cfif IsDefined ("form.NIGHTHEADCOUNTMALE")>
	<cfset varNIGHTHEADCOUNTMALE = '#form.NIGHTHEADCOUNTMALE#' />	
<cfelse> 
	<cfset varNIGHTHEADCOUNTMALE = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTHEADCOUNTFEMALE")>
	<cfset varNIGHTHEADCOUNTFEMALE = '#form.NIGHTHEADCOUNTFEMALE#' />	
<cfelse> 
	<cfset varNIGHTHEADCOUNTFEMALE = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTHEADCOUNTTOTAL")>
	<cfset varNIGHTHEADCOUNTTOTAL = '#form.NIGHTHEADCOUNTTOTAL#' />	
<cfelse> 
	<cfset varNIGHTHEADCOUNTTOTAL = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTINTAKESTOTAL")>
	<cfset varNIGHTINTAKESTOTAL = '#form.NIGHTINTAKESTOTAL#' />	
<cfelse> 
	<cfset varNIGHTINTAKESTOTAL = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTRELEASESTOTAL")>
	<cfset varNIGHTRELEASESTOTAL = '#form.NIGHTRELEASESTOTAL#' />	
<cfelse> 
	<cfset varNIGHTRELEASESTOTAL = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTKEYCOUNT")>
	<cfset varNIGHTKEYCOUNT = '#form.NIGHTKEYCOUNT#' />	
<cfelse> 
	<cfset varNIGHTKEYCOUNT = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTMEDICATIONS")>
	<cfset varNIGHTMEDICATIONS = '#form.NIGHTMEDICATIONS#' />	
<cfelse> 
	<cfset varNIGHTMEDICATIONS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTDRUGCOURT")>
	<cfset varNIGHTDRUGCOURT = '#form.NIGHTDRUGCOURT#' />	
<cfelse> 
	<cfset varNIGHTDRUGCOURT = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPHONECALLS")>
	<cfset varNIGHTPHONECALLS = '#form.NIGHTPHONECALLS#' />	
<cfelse> 
	<cfset varNIGHTPHONECALLS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTLEVELCHANGE")>
	<cfset varNIGHTLEVELCHANGE = '#form.NIGHTLEVELCHANGE#' />	
<cfelse> 
	<cfset varNIGHTLEVELCHANGE = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPAPERWORK")>
	<cfset varNIGHTPAPERWORK = '#form.NIGHTPAPERWORK#' />	
<cfelse> 
	<cfset varNIGHTPAPERWORK = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTGARBAGE")>
	<cfset varNIGHTGARBAGE = '#form.NIGHTGARBAGE#' />	
<cfelse> 
	<cfset varNIGHTGARBAGE = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPROBATIONOFFICERS")>
	<cfset varNIGHTPROBATIONOFFICERS = '#form.NIGHTPROBATIONOFFICERS#' />	
<cfelse> 
	<cfset varNIGHTPROBATIONOFFICERS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTCLEANINGCART")>
	<cfset varNIGHTCLEANINGCART = '#form.NIGHTCLEANINGCART#' />	
<cfelse> 
	<cfset varNIGHTCLEANINGCART = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTBUILDINGSECURED")>
	<cfset varNIGHTBUILDINGSECURED = '#form.NIGHTBUILDINGSECURED#' />	
<cfelse> 
	<cfset varNIGHTBUILDINGSECURED = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTMOPBUCKETS")>
	<cfset varNIGHTMOPBUCKETS = '#form.NIGHTMOPBUCKETS#' />	
<cfelse> 
	<cfset varNIGHTMOPBUCKETS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPOSITIVEPOINTS")>
	<cfset varNIGHTPOSITIVEPOINTS = '#form.NIGHTPOSITIVEPOINTS#' />	
<cfelse> 
	<cfset varNIGHTPOSITIVEPOINTS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTDISHESWASHED")>
	<cfset varNIGHTDISHESWASHED = '#form.NIGHTDISHESWASHED#' />	
<cfelse> 
	<cfset varNIGHTDISHESWASHED = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTJDIS")>
	<cfset varNIGHTJDIS = '#form.NIGHTJDIS#' />	
<cfelse> 
	<cfset varNIGHTJDIS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTTIMESHEETS")>
	<cfset varNIGHTTIMESHEETS = '#form.NIGHTTIMESHEETS#' />	
<cfelse> 
	<cfset varNIGHTTIMESHEETS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTIJOS")>
	<cfset varNIGHTIJOS = '#form.NIGHTIJOS#' />	
<cfelse> 
	<cfset varNIGHTIJOS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTCONTROLROOM")>
	<cfset varNIGHTCONTROLROOM = '#form.NIGHTCONTROLROOM#' />	
<cfelse> 
	<cfset varNIGHTCONTROLROOM = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTFILESTATUS")>
	<cfset varNIGHTFILESTATUS = '#form.NIGHTFILESTATUS#' />	
<cfelse> 
	<cfset varNIGHTFILESTATUS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTVISITATIONLETTERS")>
	<cfset varNIGHTVISITATIONLETTERS = '#form.NIGHTVISITATIONLETTERS#' />	
<cfelse> 
	<cfset varNIGHTVISITATIONLETTERS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTHANDBOOKTESTS")>
	<cfset varNIGHTHANDBOOKTESTS = '#form.NIGHTHANDBOOKTESTS#' />	
<cfelse> 
	<cfset varNIGHTHANDBOOKTESTS = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTBREAKFASTCOUNT")>
	<cfset varNIGHTBREAKFASTCOUNT = '#form.NIGHTBREAKFASTCOUNT#' />	
<cfelse> 
	<cfset varNIGHTBREAKFASTCOUNT = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTSUPPLIESINVENTORIED")>
	<cfset varNIGHTSUPPLIESINVENTORIED = '#form.NIGHTSUPPLIESINVENTORIED#' />	
<cfelse> 
	<cfset varNIGHTSUPPLIESINVENTORIED = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTCOPIES")>
	<cfset varNIGHTCOPIES = '#form.NIGHTCOPIES#' />	
<cfelse> 
	<cfset varNIGHTCOPIES = ' ' />
</cfif>

<cfif IsDefined ("form.DayPREA")>
	<cfset varDayPREA = '#form.DayPREA#' />	
<cfelse> 
	<cfset varDayPREA = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPILLCOUNT")>
	<cfset varNIGHTPILLCOUNT = '#form.NIGHTPILLCOUNT#' />	
<cfelse> 
	<cfset varNIGHTPILLCOUNT = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTLAUNDRY")>
	<cfset varNIGHTLAUNDRY = '#form.NIGHTLAUNDRY#' />	
<cfelse> 
	<cfset varNIGHTLAUNDRY = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTDETENTIONORDERSCHECKED")>
	<cfset varNIGHTDETENTIONORDERSCHECKED = '#form.NIGHTDETENTIONORDERSCHECKED#' />	
<cfelse> 
	<cfset varNIGHTDETENTIONORDERSCHECKED = ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTREADFIELDDIRECTIVES")>
	<cfset varNIGHTREADFIELDDIRECTIVES= '#form.NIGHTREADFIELDDIRECTIVES#' />	
<cfelse> 
	<cfset varNIGHTREADFIELDDIRECTIVES= ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTROOMSEARCHES")>
	<cfset varNIGHTROOMSEARCHES= '#form.NIGHTROOMSEARCHES#' />	
<cfelse> 
	<cfset varNIGHTROOMSEARCHES= ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTEMPLOYEEINITIALS")>
	<cfset varNIGHTEMPLOYEEINITIALS= '#form.NIGHTEMPLOYEEINITIALS#' />	
<cfelse> 
	<cfset varNIGHTEMPLOYEEINITIALS= ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTPERIMETERCHECK")>
	<cfset varNIGHTPERIMETERCHECK= '#form.NIGHTPERIMETERCHECK#' />	
<cfelse> 
	<cfset varNIGHTPERIMETERCHECK= ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTSUPERVISORINITIALS")>
	<cfset varNIGHTSUPERVISORINITIALS= '#form.NIGHTSUPERVISORINITIALS#' />	
<cfelse> 
	<cfset varNIGHTSUPERVISORINITIALS= ' ' />
</cfif>

<cfif IsDefined ("form.NIGHTNOTES")>
	<cfset varNIGHTNOTES= '#form.NIGHTNOTES#' />	
<cfelse> 
	<cfset varNIGHTNOTES= ' ' />
</cfif>



</head>
<body>

<cfquery name="qryNightEdit" datasource="JDCDB">
	UPDATE ShiftSummaryNight
	SET
	NIGHTDATE = '#form.NIGHTDATE#'
	,NIGHTHEADCOUNTMALE	 = '#varNIGHTHEADCOUNTMALE#'
	,NIGHTHEADCOUNTFEMALE = '#varNIGHTHEADCOUNTFEMALE#'
	,NIGHTHEADCOUNTTOTAL = '#varNIGHTHEADCOUNTTOTAL#'
	,NIGHTINTAKESTOTAL = '#varNIGHTINTAKESTOTAL#'
	,NIGHTRELEASESTOTAL	= '#varNIGHTRELEASESTOTAL#'
	,RESONESTATUS = '#form.RESONESTATUS#'
	,RESONENAME	= '#form.RESONENAME#'
	,RESONETIME	= '#form.RESONETIME#'
	,RESONENOTES = '#form.RESONENOTES#'
	,RESTWOSTATUS	 = '#form.RESTWOSTATUS#'
	,RESTWONAME	 = '#form.RESTWONAME#'
	,RESTWOTIME	 = '#form.RESTWOTIME#'
	,RESTWONOTES	 = '#form.RESTWONOTES#'
	,RESTHREESTATUS	 = '#form.RESTHREESTATUS#'
	,RESTHREENAME	 = '#form.RESTHREENAME#'
	,RESTHREETIME	 = '#form.RESTHREETIME#'
	,RESTHREENOTES	 = '#form.RESTHREENOTES#'
	,RESFOURSTATUS	 = '#form.RESFOURSTATUS#'
	,RESFOURNAME	 = '#form.RESFOURNAME#'
	,RESFOURTIME	 = '#form.RESFOURTIME#'
	,RESFOURNOTES	 = '#form.RESFOURNOTES#'
	,RESFIVESTATUS	 = '#form.RESFIVESTATUS#'
	,RESFIVENAME	 = '#form.RESFIVENAME#'
	,RESFIVETIME	 = '#form.RESFIVETIME#'
	,RESFIVENOTES	 = '#form.RESFIVENOTES#'
	,RESSIXSTATUS	 = '#form.RESSIXSTATUS#'
	,RESSIXNAME	 = '#form.RESSIXNAME#'
	,RESSIXTIME	 = '#form.RESSIXTIME#'
	,RESSIXNOTES	 = '#form.RESSIXNOTES#'
	,RESSEVENSTATUS	 = '#form.RESSEVENSTATUS#'
	,RESSEVENNAME	 = '#form.RESSEVENNAME#'
	,RESSEVENTIME	 = '#form.RESSEVENTIME#'
	,RESSEVENNOTES	 = '#form.RESSEVENNOTES#'
	,RESEIGHTSTATUS	 = '#form.RESEIGHTSTATUS#'
	,RESEIGHTNAME	 = '#form.RESEIGHTNAME#'
	,RESEIGHTTIME	 = '#form.RESEIGHTTIME#'
	,RESEIGHTNOTES	 = '#form.RESEIGHTNOTES#'
	,RESNINESTATUS	 = '#form.RESNINESTATUS#'
	,RESNINENAME	 = '#form.RESNINENAME#'
	,RESNINETIME	 = '#form.RESNINETIME#'
	,RESNINENOTES	 = '#form.RESNINENOTES#'
	,RESTENSTATUS	 = '#form.RESTENSTATUS#'
	,RESTENNAME	 = '#form.RESTENNAME#'
	,RESTENTIME	 = '#form.RESTENTIME#'
	,RESTENNOTES	 = '#form.RESTENNOTES#'
	,NIGHTKEYCOUNT	 = '#varNIGHTKEYCOUNT#'
	,NIGHTMEDICATIONS	 = '#varNIGHTMEDICATIONS#'
	,NIGHTDRUGCOURT	 = '#varNIGHTDRUGCOURT#'
	,NIGHTPHONECALLS	 = '#varNIGHTPHONECALLS#'
	,NIGHTLEVELCHANGE	 = '#varNIGHTLEVELCHANGE#'
	,NIGHTPAPERWORK	 = '#varNIGHTPAPERWORK#'
	,NIGHTGARBAGE	 = '#varNIGHTGARBAGE#'
	,NIGHTPROBATIONOFFICERS	 = '#varNIGHTPROBATIONOFFICERS#'
	,NIGHTCLEANINGCART	 = '#varNIGHTCLEANINGCART#'
	,NIGHTBUILDINGSECURED	 = '#varNIGHTBUILDINGSECURED#'
	,NIGHTMOPBUCKETS	 = '#varNIGHTMOPBUCKETS#'
	,NIGHTPOSITIVEPOINTS	 = '#varNIGHTPOSITIVEPOINTS#'
	,NIGHTDISHESWASHED	 = '#varNIGHTDISHESWASHED#'
	,NIGHTJDIS	 = '#varNIGHTJDIS#'
	,NIGHTTIMESHEETS	 = '#varNIGHTTIMESHEETS#'
	,NIGHTIJOS	 = '#varNIGHTIJOS#'
	,NIGHTCONTROLROOM	 = '#varNIGHTCONTROLROOM#'
	,NIGHTFILESTATUS	 = '#varNIGHTFILESTATUS#'
	,NIGHTVISITATIONLETTERS	 = '#varNIGHTVISITATIONLETTERS#'
	,NIGHTHANDBOOKTESTS	 = '#varNIGHTHANDBOOKTESTS#'
	,NIGHTBREAKFASTCOUNT	 = '#varNIGHTBREAKFASTCOUNT#'
	,NIGHTSUPPLIESINVENTORIED	 = '#varNIGHTSUPPLIESINVENTORIED#'
	,NIGHTCOPIES	 = '#varNIGHTCOPIES#'
	,NIGHTPILLCOUNT	 = '#varNIGHTPILLCOUNT#'
	,NIGHTLAUNDRY	 = '#varNIGHTLAUNDRY#'
	,NIGHTREADFIELDDIRECTIVES	 = '#varNIGHTREADFIELDDIRECTIVES#'
	,NIGHTDETENTIONORDERSCHECKED	 = '#varNIGHTDETENTIONORDERSCHECKED#'
	,NIGHTROOMSEARCHES	 = '#varNIGHTROOMSEARCHES#'
	,NIGHTEMPLOYEEINITIALS	 = '#varNIGHTEMPLOYEEINITIALS#'
	,NIGHTPERIMETERCHECK	 = '#varNIGHTPERIMETERCHECK#'
	,NIGHTSUPERVISORINITIALS	 = '#varNIGHTSUPERVISORINITIALS#'
	,NIGHTNOTES	 = '#varNIGHTNOTES#'	
	WHERE NightID = #URL.NightID#
</cfquery>

<cflocation url="shiftsummarynightedit.cfm?NightID=#URL.NightID#" />
</body>

</html>
