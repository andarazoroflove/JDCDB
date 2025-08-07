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
  background-color: Orange;
}
.style6 {
	font-size: small;
	border-style: solid;
	border-width: 1px;
}
.style7 {
	border-style: solid;
	border-width: 1px;
	background-color: #FFFFFF;
}
.style8 {
	border-width: 0px;
}
.style9 {
	border-style: solid;
	border-width: 1px;
	background-color: #CCFFFF;
}
.style10 {
	color: #000000;
}
.style11 {
	background-color: #FF9933;
}
.style12 {
	font-size: small;
}
.style13 {
	font-size: x-small;
}
.style14 {
	font-size: x-small;
	text-decoration: underline;
}
.style15 {
	font-size: small;
	text-decoration: underline;
}
.style16 {
	text-decoration: underline;
}
.style17 {
	color: #FF0000;
	font-size: small;
}
</style>
<cfset varToday = #DateFormat(Now(), "yyyy-mm-dd")#>

</head>

<body style="color: #FFFFFF; background-color: #FF9933">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0" class="style9">
	<tr>
		<td colspan="6" class="style11">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='shiftsummaryday.cfm'" type="button" align="left"><i class="fa fa-sun-o"></i> Create New Day Summary</button>		
		<button class="btn" onclick="location.href='shiftsummarynight.cfm'" type="button" align="left"><i class="fa fa-moon-o"></i> Create New Night Summary</button>
		<button class="btn" onclick="location.href='shiftsummarysearch.cfm'" type="button" align="left"><i class="fa fa-search"></i> Search</button>
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
		<td colspan="4"><span class="style1"><strong><center class="style10">Shift Summary Day 
		6AM-6PM</strong></center></span><hr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2" rowspan="2">
		<cfform method="post" action="daysummaryinsert.cfm" id="form">
		<table style="width: 100%">
			<tr>
				<td style="width: 33%"><strong>Date: </strong> <input type="date" name="DayDate" id="DayDate" required <cfoutput>value="#varToday#"</cfoutput>></td>
				<td style="width: 33%"></td>
				<td style="width: 33%" class="style17"><strong>SUMMARY NOT SAVED</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><strong>Head Count Male: </strong> </td>
				<td style="width: 33%"><strong>Head Count Female:&nbsp;</strong></td>
				<td style="width: 33%"><strong>Head Count Total:</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><input type="text" name="DayHeadCountMale" id="DayHeadCountMale"></td>
				<td style="width: 33%"><input type="text" name="DayHeadCountFemale" id="DayHeadCountFemale"></td>
				<td style="width: 33%"><input type="text" name="DayHeadCountTotal" id="DayHeadCountTotal"></td>
			</tr>
			<tr>
				<td colspan="3"><strong>Intakes Total: <input type="text" name="DayIntakesTotal" id="DayIntakesTotal"> Releases Total: <input type="text" name="DayReleasesTotal" id="DayReleasesTotal"></strong></td>
			</tr>
			<tr>
				<td style="width: 33%">&nbsp;</td>
				<td style="width: 33%">&nbsp;</td>
				<td style="width: 33%">&nbsp;</td>
			</tr>
		</table>
		
		
		
		<table style="width: 100%" class="style8">
			<tr>
				<td style="width: 10%" class="style6"><strong>I/R</strong></td>
				<td style="width: 30%" class="style6"><strong>Resident Name</strong></td>
				<td style="width: 20%" class="style6"><strong>Time</strong></td>
				<td style="width: 40%" class="style6"><strong>Released 
				to/Brought in by/Charge</strong></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResOneStatus" id="ResOneStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResOneName" id="ResOneName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResOneTime" id="ResOneTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResOneNotes" id="ResOneNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResTwoStatus" id="ResTwoStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResTwoName" id="ResTwoName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResTwoTime" id="ResTwoTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResTwoNotes" id="ResTwoNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResThreeStatus" id="ResThreeStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResThreeName" id="ResThreeName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResThreeTime" id="ResThreeTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResThreeNotes" id="ResThreeNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResFourStatus" id="ResFourStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResFourName" id="ResFourName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResFourTime" id="ResFourTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResFourNotes" id="ResFourNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResFiveStatus" id="ResFiveStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResFiveName" id="ResFiveName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResFiveTime" id="ResFiveTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResFiveNotes" id="ResFiveNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResSixStatus" id="ResSixStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResSixName" id="ResSixName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResSixTime" id="ResSixTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResSixNotes" id="ResSixNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResSevenStatus" id="ResSevenStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResSevenName" id="ResSevenName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResSevenTime" id="ResSevenTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResSevenNotes" id="ResSevenNotes" size="40"></td>
			</tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResEightStatus" id="ResEightStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResEightName" id="ResEightName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResEightTime" id="ResEightTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResEightNotes" id="ResEightNotes" size="40"></td>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResNineStatus" id="ResNineStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResNineName" id="ResNineName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResNineTime" id="ResNineTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResNineNotes" id="ResNineNotes" size="40"></td>
			</tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResTenStatus" id="ResTenStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResTenName" id="ResTenName" size="25"></td>
				<td style="width: 20%" class="style7"><input type="time" name="ResTenTime" id="ResTenTime"></td>
			 	<td style="width: 40%" class="style7"><input type="text" name="ResTenNotes" id="ResTenNotes" size="40"></td>
			<tr>
			</tr>
		</table>
		
		
		
		<table style="width: 100%">
			<tr>
				<td style="width: 5%"> <strong><input type="checkbox" id="DayKeyCount" name="DayKeyCount" value="1"></strong></td>
				<td colspan="3"> <strong><span class="style12">Key Count: 4 Master Keys; 1 Holding 
				Cell Key; 4 Handcuff Keys are accounted for. </span></strong></td>
			</tr>
			<tr>
				<td style="width: 5%"> <input type="checkbox" id="DayBreakfast" name="DayBreakfast" value="1"></td>
				<td style="width: 45%" class="style13"><strong>BREAKFAST meal 
				trays cleaned and accounted for</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayDinner" name="DayDinner" value="1"></td>
				<td style="width: 45%" class="style13"><strong>DINNER meal trays 
				cleaned and accounted for</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayProbationContact" name="DayProbationContact" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Probation 
				Officer/Attorney contacts made</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayMealsRefused" name="DayMealsRefused" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Meals refused 
				logged</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayProbationNotified" name="DayProbationNotified" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Probation 
				Officers notified of detention hearings</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayHygiene" name="DayHygiene" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Hygiene Kits made 
				available to residents</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayMedications" name="DayMedications" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Medications made 
				available to residents</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayDishesWashed" name="DayDishesWashed" value="1"></td>
				<td style="width: 45%" class="style13"><strong>All dishes washed 
				and put away</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayDetentionHearings" name="DayDetentionHearings" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Detention 
				hearings done for non-probation residents</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayTimeSheets" name="DayTimeSheets" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Time sheets 
				accurate and initialed</strong></td>
			</tr>
			<tr>
				<td style="width: 5%; height: 25px;"><input type="checkbox" id="DayPositivePoints" name="DayPositivePoints" value="1"></td>
				<td style="width: 45%; height: 25px;" class="style13"><strong>Positive Points 
				Tallied</strong></td>
				<td style="width: 5%; height: 25px;" class="style13"><input type="checkbox" id="DayControlRoom" name="DayControlRoom" value="1"></td>
				<td style="width: 45%; height: 25px;" class="style13"><strong>Control Room neat, clean, and orderly</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayLunchCallIn" name="DayLunchCallIn" value="1"></td>
				<td style="width: 45%" class="style13"><strong>LUNCH meal 
				called in</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayLaundry" name="DayLaundry" value="1"></td>
				<td style="width: 45%" class="style13"><strong>All Laundry 
				accounted for</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayLunchTrays" name="DayLunchTrays" value="1"></td>
				<td style="width: 45%" class="style13"><strong>LUNCH meal trays 
				cleaned and accounted for</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayDetentionOrders" name="DayDetentionOrders" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Detention Orders 
				Checked</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayHandbooks" name="DayHandbooks" value="1"></td>
				<td style="width: 45%" class="style13"><strong>Handbook Tests 
				given</strong></td>
				<td style="width: 5%" class="style13">&nbsp;</td>
				<td style="width: 45%" class="style14"><strong>Room Searches 
				Conducted and PATDOWN:</strong></td>
			</tr>
			<tr>
				<td style="width: 5%"><input type="checkbox" id="DayDinnerCallIn" name="DayDinnerCallIn" value="1"></td>
				<td style="width: 45%" class="style13"><strong>DINNER meal count 
				called in</strong></td>
				<td style="width: 5%" class="style13">&nbsp;</td>
				<td style="width: 45%" class="style14"><input type="text" name="DayRoomSearches" id="DayRoomSearches"></td>
			</tr>
			<tr>
				<td style="width: 5%">&nbsp;</td>
				<td style="width: 45%" class="style14"><strong>All Employees 
				read notes and logs for shift:</strong></td>
				<td style="width: 5%" class="style13">&nbsp;</td>
				<td style="width: 45%" class="style14"><strong>Perimeter Check 
				Time/Conducted By:</strong></td>
			</tr>
			<tr>
				<td style="width: 5%">&nbsp;</td>
				<td style="width: 45%" class="style13"><strong>Initials: </strong><input type="text" id="DayEmployeeInitials" name="DayEmployeeInitials"></td>
				<td style="width: 5%" class="style13">&nbsp;</td>
				<td style="width: 45%" class="style13"><input type="time" id="DayPerimiterTime" name="DayPerimeterTime"> <input type="text" id="DayPerimeterCheck" name="DayPerimeterCheck"></td>
			</tr>
			<tr>
				<td style="width: 5%">&nbsp;</td>
				<td style="width: 45%" class="style13"><strong>Shift Supervisor:</strong></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayReadFieldDirectives" name="DayReadFieldDirectives" value="1"></td>
				<td style="width: 45%" class="style13"><strong>READ Field Directives</strong></td>
			</tr>
			<tr>
				<td style="width: 5%">&nbsp;</td>
				<td style="width: 45%" class="style13"><strong>Initials:
				</strong><input type="text" id="DaySupervisorInitials" name="DaySupervisorInitials"></td>
				<td style="width: 5%" class="style13"><input type="checkbox" id="DayPREA" name="DayPREA" value="1"></td>
				<td style="width: 45%" class="style13"><strong>PREA ANNOUNCED</strong></td>
			</tr>
			</table>
		<table style="width: 100%">
			<tr>
				<td style="width: 33%" class="style15"><strong>Breakfast Meal 
				Menu</strong></td>
				<td style="width: 33%" class="style12"><strong>
				<span class="style16">Lunch Meal Menu</span></strong></td>
				<td style="width: 33%" class="style12"><strong>
				<span class="style16">Dinner Meal Menu</span></strong></td>
			</tr>
			<tr>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayBreakfastMenu" id="DayBreakfastMenu" cols="20" rows="5" wrap="soft"></textarea></td>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayLunchMenu" id="DayLunchMenu" cols="20" rows="5" wrap="soft"></textarea></td>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayDinnerMenu" id="DayDinnerMenu" cols="20" rows="5" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td style="width: 33%" class="style12"><strong>
				<span class="style16">Breakfast Refused Log</span></strong></td>
				<td style="width: 33%" class="style12"><strong>
				<span class="style16">Lunch Refused Log</span></strong></td>
				<td style="width: 33%" class="style12"><strong>
				<span class="style16">Dinner Refused Log</span></strong></td>
			</tr>
			<tr>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayBreakfastRefused" id="DayBreakfastRefused" cols="20" rows="5" wrap="soft"></textarea></td>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayLunchRefused" id="DayLunchRefused" cols="20" rows="5" wrap="soft"></textarea></td>
				<td style="width: 33%" class="style12"><textarea form="form" name="DayDinnerRefused" id="DayDinnerRefused" cols="20" rows="5" wrap="soft"></textarea></td>
			</tr>
		</table>		
		<table style="width: 100%">
			<tr>
				<td class="style12"><strong><span class="style16">Notes for 
				shift summary:</span></strong></td>
			</tr>
			<tr>
				<td class="style12"><textarea form="form" name="DayNotes" id="DayNotes" cols="60" rows="10" wrap="soft"></textarea></td>
			</tr>
			<tr>
				<td class="style12"><strong><span class="style16">BUMP LIST:</span></strong></td>
			</tr>
			<tr>
				<td class="style12"><textarea form="form" name="DayBumpList" id="DayBumpList" cols="60" rows="5" wrap="soft"></textarea></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Save Shift Summary" />
		</cfform>
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
