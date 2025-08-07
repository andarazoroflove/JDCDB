<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>

<cfif IsDefined ("form.DayKeyCount")>
	<cfset varDayKeyCount = '#form.DayKeyCount#' />	
<cfelse> 
	<cfset varDayKeyCount = ' ' />
</cfif>

<cfif IsDefined ("form.DayBreakfast")>
	<cfset varDayBreakfast = '#form.DayBreakfast#' />	
<cfelse> 
	<cfset varDayBreakfast = ' ' />
</cfif>

<cfif IsDefined ("form.DayDinner")>
	<cfset varDayDinner = '#form.DayDinner#' />	
<cfelse> 
	<cfset varDayDinner = ' ' />
</cfif>

<cfif IsDefined ("form.DayProbationContact")>
	<cfset varDayProbationContact = '#form.DayProbationContact#' />	
<cfelse> 
	<cfset varDayProbationContact = ' ' />
</cfif>

<cfif IsDefined ("form.DayMealsRefused")>
	<cfset varDayMealsRefused = '#form.DayMealsRefused#' />	
<cfelse> 
	<cfset varDayMealsRefused = ' ' />
</cfif>

<cfif IsDefined ("form.DayProbationNotified")>
	<cfset varDayProbationNotified = '#form.DayProbationNotified#' />	
<cfelse> 
	<cfset varDayProbationNotified = ' ' />
</cfif>

<cfif IsDefined ("form.DayHygiene")>
	<cfset varDayHygiene = '#form.DayHygiene#' />	
<cfelse> 
	<cfset varDayHygiene = ' ' />
</cfif>

<cfif IsDefined ("form.DayMedications")>
	<cfset varDayMedications = '#form.DayMedications#' />	
<cfelse> 
	<cfset varDayMedications = ' ' />
</cfif>

<cfif IsDefined ("form.DayDishesWashed")>
	<cfset varDayDishesWashed = '#form.DayDishesWashed#' />	
<cfelse> 
	<cfset varDayDishesWashed = ' ' />
</cfif>

<cfif IsDefined ("form.DayDetentionHearings")>
	<cfset varDayDetentionHearings = '#form.DayDetentionHearings#' />	
<cfelse> 
	<cfset varDayDetentionHearings = ' ' />
</cfif>

<cfif IsDefined ("form.DayTimeSheets")>
	<cfset varDayTimeSheets = '#form.DayTimeSheets#' />	
<cfelse> 
	<cfset varDayTimeSheets = ' ' />
</cfif>

<cfif IsDefined ("form.DayPositivePoints")>
	<cfset varDayPositivePoints = '#form.DayPositivePoints#' />	
<cfelse> 
	<cfset varDayPositivePoints = ' ' />
</cfif>

<cfif IsDefined ("form.DayControlRoom")>
	<cfset varDayControlRoom = '#form.DayControlRoom#' />	
<cfelse> 
	<cfset varDayControlRoom = ' ' />
</cfif>

<cfif IsDefined ("form.DayLunchCallIn")>
	<cfset varDayLunchCallIn = '#form.DayLunchCallIn#' />	
<cfelse> 
	<cfset varDayLunchCallIn = ' ' />
</cfif>

<cfif IsDefined ("form.DayLaundry")>
	<cfset varDayLaundry = '#form.DayLaundry#' />	
<cfelse> 
	<cfset varDayLaundry = ' ' />
</cfif>

<cfif IsDefined ("form.DayLunchTrays")>
	<cfset varDayLunchTrays = '#form.DayLunchTrays#' />	
<cfelse> 
	<cfset varDayLunchTrays = ' ' />
</cfif>

<cfif IsDefined ("form.DayDetentionOrders")>
	<cfset varDayDetentionOrders = '#form.DayDetentionOrders#' />	
<cfelse> 
	<cfset varDayDetentionOrders = ' ' />
</cfif>

<cfif IsDefined ("form.DayHandBooks")>
	<cfset varDayHandBooks = '#form.DayHandBooks#' />	
<cfelse> 
	<cfset varDayHandBooks = ' ' />
</cfif>

<cfif IsDefined ("form.DayDinnerCallIn")>
	<cfset varDayDinnerCallIn = '#form.DayDinnerCallIn#' />	
<cfelse> 
	<cfset varDayDinnerCallIn = ' ' />
</cfif>

<cfif IsDefined ("form.DayRoomSearches")>
	<cfset varDayRoomSearches = '#form.DayRoomSearches#' />	
<cfelse> 
	<cfset varDayRoomSearches = ' ' />
</cfif>

<cfif IsDefined ("form.DayPerimeterCheck")>
	<cfset varDayPerimeterCheck = '#form.DayPerimeterCheck#' />	
<cfelse> 
	<cfset varDayPerimeterCheck = ' ' />
</cfif>

<cfif IsDefined ("form.DayReadFieldDirectives")>
	<cfset varDayReadFieldDirectives = '#form.DayReadFieldDirectives#' />	
<cfelse> 
	<cfset varDayReadFieldDirectives = ' ' />
</cfif>

<cfif IsDefined ("form.DayPREA")>
	<cfset varDayPREA = '#form.DayPREA#' />	
<cfelse> 
	<cfset varDayPREA = ' ' />
</cfif>


</head>
<body>

<cfquery name="qryDayEdit" datasource="JDCDB">
	UPDATE ShiftSummaryDay
	SET
	DayDate = '#form.DayDate#'
	,DAYHEADCOUNTMALE = '#form.DAYHEADCOUNTMALE#'
	,DAYHEADCOUNTFEMALE = '#form.DAYHEADCOUNTFEMALE#'
	,DAYHEADCOUNTTOTAL = '#form.DAYHEADCOUNTTOTAL#'
	,DAYINTAKESTOTAL = '#form.DAYINTAKESTOTAL#'
	,DAYRELEASESTOTAL = '#form.DAYRELEASESTOTAL#'
	,RESONESTATUS = '#form.RESONESTATUS#'
	,RESONENAME = '#form.RESONENAME#'
	,RESONETIME = '#form.RESONETIME#'
	,RESONENOTES = '#form.RESONENOTES#'
	,RESTWOSTATUS = '#form.RESTWOSTATUS#'
	,RESTWONAME = '#form.RESTWONAME#'
	,RESTWOTIME = '#form.RESTWOTIME#'
	,RESTWONOTES = '#form.RESTWONOTES#'
	,RESTHREESTATUS = '#form.RESTHREESTATUS#'
	,RESTHREENAME = '#form.RESTHREENAME#'
	,RESTHREETIME = '#form.RESTHREETIME#'
	,RESTHREENOTES = '#form.RESTHREENOTES#'
	,RESFOURSTATUS = '#form.RESFOURSTATUS#'
	,RESFOURNAME = '#form.RESFOURNAME#'
	,RESFOURTIME = '#form.RESFOURTIME#'
	,RESFOURNOTES = '#form.RESFOURNOTES#'
	,RESFIVESTATUS = '#form.RESFIVESTATUS#'
	,RESFIVENAME = '#form.RESFIVENAME#'
	,RESFIVETIME = '#form.RESFIVETIME#'
	,RESFIVENOTES = '#form.RESFIVENOTES#'
	,RESSIXSTATUS = '#form.RESSIXSTATUS#'
	,RESSIXNAME = '#form.RESSIXNAME#'
	,RESSIXTIME = '#form.RESSIXTIME#'
	,RESSIXNOTES = '#form.RESSIXNOTES#'
	,RESSEVENSTATUS = '#form.RESSEVENSTATUS#'
	,RESSEVENNAME = '#form.RESSEVENNAME#'
	,RESSEVENTIME = '#form.RESSEVENTIME#'
	,RESSEVENNOTES = '#form.RESSEVENNOTES#'
	,RESEIGHTSTATUS = '#form.RESEIGHTSTATUS#'
	,RESEIGHTNAME = '#form.RESEIGHTNAME#'
	,RESEIGHTTIME = '#form.RESEIGHTTIME#'
	,RESEIGHTNOTES = '#form.RESEIGHTNOTES#'
	,RESNINESTATUS = '#form.RESNINESTATUS#'
	,RESNINENAME = '#form.RESNINENAME#'
	,RESNINETIME = '#form.RESNINETIME#'
	,RESNINENOTES = '#form.RESNINENOTES#'
	,RESTENSTATUS = '#form.RESTENSTATUS#'
	,RESTENNAME = '#form.RESTENNAME#'
	,RESTENTIME = '#form.RESTENTIME#'
	,RESTENNOTES = '#form.RESTENNOTES#'
	,DAYKEYCOUNT = '#varDAYKEYCOUNT#'
	,DAYBREAKFAST = '#varDAYBREAKFAST#'
	,DAYDINNER = '#varDAYDINNER#'
	,DAYPROBATIONCONTACT = '#varDAYPROBATIONCONTACT#'
	,DAYMEALSREFUSED = '#varDAYMEALSREFUSED#'
	,DAYPROBATIONNOTIFIED = '#varDAYPROBATIONNOTIFIED#'
	,DAYHYGIENE = '#varDAYHYGIENE#'
	,DAYMEDICATIONS = '#varDAYMEDICATIONS#'
	,DAYDISHESWASHED = '#varDAYDISHESWASHED#'
	,DAYDETENTIONHEARINGS = '#varDAYDETENTIONHEARINGS#'
	,DAYTIMESHEETS = '#varDAYTIMESHEETS#'
	,DAYPOSITIVEPOINTS = '#varDAYPOSITIVEPOINTS#'
	,DAYCONTROLROOM = '#varDAYCONTROLROOM#'
	,DAYLUNCHCALLIN = '#varDAYLUNCHCALLIN#'
	,DAYLAUNDRY = '#varDAYLAUNDRY#'
	,DAYLUNCHTRAYS = '#varDAYLUNCHTRAYS#'
	,DAYDETENTIONORDERS = '#varDAYDETENTIONORDERS#'
	,DAYHANDBOOKS = '#varDAYHANDBOOKS#'
	,DAYDINNERCALLIN = '#varDAYDINNERCALLIN#'
	,DAYROOMSEARCHES = '#varDAYROOMSEARCHES#'
	,DAYEMPLOYEEINITIALS = '#form.DAYEMPLOYEEINITIALS#'
	,DAYPERIMETERTIME = '#form.DAYPERIMETERTIME#'
	,DAYPERIMETERCHECK = '#form.DAYPERIMETERCHECK#'
	,DAYREADFIELDDIRECTIVES = '#varDAYREADFIELDDIRECTIVES#'
	,DAYSUPERVISORINITIALS = '#form.DAYSUPERVISORINITIALS#'
	,DAYPREA = '#varDAYPREA#'
	,DAYBREAKFASTMENU = '#form.DAYBREAKFASTMENU#'
	,DAYLUNCHMENU = '#form.DAYLUNCHMENU#'
	,DAYDINNERMENU = '#form.DAYDINNERMENU#'
	,DAYBREAKFASTREFUSED = '#form.DAYBREAKFASTREFUSED#'
	,DAYLUNCHREFUSED = '#form.DAYLUNCHREFUSED#'
	,DAYDINNERREFUSED = '#form.DAYDINNERREFUSED#'
	,DAYNOTES = '#form.DAYNOTES#'
	,DAYBUMPLIST = '#form.DAYBUMPLIST#'	
	WHERE DayID = #URL.DayID#
</cfquery>

<cflocation url="shiftsummarydayedit.cfm?DayID=#URL.DayID#" />
</body>

</html>
