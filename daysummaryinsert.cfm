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




<cfquery name="qryShiftSummaryDayInsert" datasource="JDCDB" result="result">
	INSERT INTO ShiftSummaryDay
	(DAYDATE,DAYHEADCOUNTMALE,DAYHEADCOUNTFEMALE,DAYHEADCOUNTTOTAL,DAYINTAKESTOTAL,DAYRELEASESTOTAL,RESONESTATUS,RESONENAME,RESONETIME,RESONENOTES,RESTWOSTATUS,RESTWONAME,RESTWOTIME,RESTWONOTES,RESTHREESTATUS,RESTHREENAME,RESTHREETIME,RESTHREENOTES,RESFOURSTATUS,RESFOURNAME,RESFOURTIME,RESFOURNOTES,RESFIVESTATUS,RESFIVENAME,RESFIVETIME,RESFIVENOTES,RESSIXSTATUS,RESSIXNAME,RESSIXTIME,RESSIXNOTES,RESSEVENSTATUS,RESSEVENNAME,RESSEVENTIME,RESSEVENNOTES,RESEIGHTSTATUS,RESEIGHTNAME,RESEIGHTTIME,RESEIGHTNOTES,RESNINESTATUS,RESNINENAME,RESNINETIME,RESNINENOTES,RESTENSTATUS,RESTENNAME,RESTENTIME,RESTENNOTES,DAYKEYCOUNT,DAYBREAKFAST,DAYDINNER,DAYPROBATIONCONTACT,DAYMEALSREFUSED,DAYPROBATIONNOTIFIED,DAYHYGIENE,DAYMEDICATIONS,DAYDISHESWASHED,DAYDETENTIONHEARINGS,DAYTIMESHEETS,DAYPOSITIVEPOINTS,DAYCONTROLROOM,DAYLUNCHCALLIN,DAYLAUNDRY,DAYLUNCHTRAYS,DAYDETENTIONORDERS,DAYHANDBOOKS,DAYDINNERCALLIN,DAYROOMSEARCHES,DAYEMPLOYEEINITIALS,DAYPERIMETERTIME,DAYPERIMETERCHECK,DAYREADFIELDDIRECTIVES,DAYSUPERVISORINITIALS,DAYPREA,DAYBREAKFASTMENU,DAYLUNCHMENU,DAYDINNERMENU,DAYBREAKFASTREFUSED,DAYLUNCHREFUSED,DAYDINNERREFUSED,DAYNOTES,DAYBUMPLIST)
	VALUES
	('#form.DAYDATE#','#form.DAYHEADCOUNTMALE#','#form.DAYHEADCOUNTFEMALE#','#form.DAYHEADCOUNTTOTAL#','#form.DAYINTAKESTOTAL#','#form.DAYRELEASESTOTAL#','#form.RESONESTATUS#','#form.RESONENAME#','#form.RESONETIME#','#form.RESONENOTES#','#form.RESTWOSTATUS#','#form.RESTWONAME#','#form.RESTWOTIME#','#form.RESTWONOTES#','#form.RESTHREESTATUS#','#form.RESTHREENAME#','#form.RESTHREETIME#','#form.RESTHREENOTES#','#form.RESFOURSTATUS#','#form.RESFOURNAME#','#form.RESFOURTIME#','#form.RESFOURNOTES#','#form.RESFIVESTATUS#','#form.RESFIVENAME#','#form.RESFIVETIME#','#form.RESFIVENOTES#','#form.RESSIXSTATUS#','#form.RESSIXNAME#','#form.RESSIXTIME#','#form.RESSIXNOTES#','#form.RESSEVENSTATUS#','#form.RESSEVENNAME#','#form.RESSEVENTIME#','#form.RESSEVENNOTES#','#form.RESEIGHTSTATUS#','#form.RESEIGHTNAME#','#form.RESEIGHTTIME#','#form.RESEIGHTNOTES#','#form.RESNINESTATUS#','#form.RESNINENAME#','#form.RESNINETIME#','#form.RESNINENOTES#','#form.RESTENSTATUS#','#form.RESTENNAME#','#form.RESTENTIME#','#form.RESTENNOTES#','#varDAYKEYCOUNT#','#varDAYBREAKFAST#','#varDAYDINNER#','#varDAYPROBATIONCONTACT#','#varDAYMEALSREFUSED#','#varDAYPROBATIONNOTIFIED#','#varDAYHYGIENE#','#varDAYMEDICATIONS#','#varDAYDISHESWASHED#','#varDAYDETENTIONHEARINGS#','#varDAYTIMESHEETS#','#varDAYPOSITIVEPOINTS#','#varDAYCONTROLROOM#','#varDAYLUNCHCALLIN#','#varDAYLAUNDRY#','#varDAYLUNCHTRAYS#','#varDAYDETENTIONORDERS#','#varDAYHANDBOOKS#','#varDAYDINNERCALLIN#','#varDAYROOMSEARCHES#','#form.DAYEMPLOYEEINITIALS#','#form.DAYPERIMETERTIME#','#varDAYPERIMETERCHECK#','#varDAYREADFIELDDIRECTIVES#','#form.DAYSUPERVISORINITIALS#','#varDAYPREA#','#form.DAYBREAKFASTMENU#','#form.DAYLUNCHMENU#','#form.DAYDINNERMENU#','#form.DAYBREAKFASTREFUSED#','#form.DAYLUNCHREFUSED#','#form.DAYDINNERREFUSED#','#form.DAYNOTES#','#form.DAYBUMPLIST#')
</cfquery>

<cflocation url="shiftsummarydayedit.cfm?DayID=#result.IDENTITYCOL#" />
</body>

</html>
