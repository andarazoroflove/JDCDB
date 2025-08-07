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
	font-family: Arial, Helvetica, sans-serif;
	color: #000000;
	background-color: #FFFF99;
}
.style7 {
	background-color: #FFFF99;
}
.style8 {
	color: #000000;
}
.style9 {
	font-size: small;
}
.style10 {
	color: #FF0000;
}
</style>
</head>
<cfset varToday = #DateFormat(Now(), "yyyy-mm-dd")#>
<body style="color: #FFFFFF; background-color: #FF9933">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
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
		<td style="width: 2%" class="style7">&nbsp;</td>
		<td colspan="4" class="style7"><span class="style1"><strong>
		<center class="style8">Shift Summary Night 6PM-6AM</strong></center></span><hr>
		<br />
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%" class="style7">&nbsp;</td>
		<td colspan="4" class="style6">
		<cfform method="post" action="nightsummaryinsert.cfm" id="form">
		<table style="width: 100%">
			<tr>
				<td style="width: 33%"><strong>Date: </strong> <input type="date" name="NightDate" id="NightDate" required <cfoutput>value="#varToday#"</cfoutput>></td>
				<td style="width: 33%"></td>
				<td style="width: 33%" class="style10"><strong>SUMMARY NOT SAVED</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><strong>Head Count Male: </strong> </td>
				<td style="width: 33%"><strong>Head Count Female:&nbsp;</strong></td>
				<td style="width: 33%"><strong>Head Count Total:</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><input type="text" name="NightHeadCountMale" id="NightHeadCountMale"></td>
				<td style="width: 33%"><input type="text" name="NightHeadCountFemale" id="NightHeadCountFemale"></td>
				<td style="width: 33%"><input type="text" name="NightHeadCountTotal" id="NightHeadCountTotal"></td>
			</tr>
			<tr>
				<td colspan="3"><strong>Intakes Total: <input type="text" name="NightIntakesTotal" id="NightIntakesTotal"> Releases Total: <input type="text" name="NightReleasesTotal" id="NightReleasesTotal"></strong></td>
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
				<td style="width: 52%" class="style6"><strong>Time</strong></td>
				<td style="width: 40%" class="style6"><strong>Released 
				to/Brought in by/Charge</strong></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResOneStatus" id="ResOneStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResOneName" id="ResOneName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResOneTime" id="ResOneTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResOneNotes" id="ResOneNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResTwoStatus" id="ResTwoStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResTwoName" id="ResTwoName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResTwoTime" id="ResTwoTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResTwoNotes" id="ResTwoNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResThreeStatus" id="ResThreeStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResThreeName" id="ResThreeName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResThreeTime" id="ResThreeTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResThreeNotes" id="ResThreeNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResFourStatus" id="ResFourStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResFourName" id="ResFourName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResFourTime" id="ResFourTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResFourNotes" id="ResFourNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResFiveStatus" id="ResFiveStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResFiveName" id="ResFiveName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResFiveTime" id="ResFiveTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResFiveNotes" id="ResFiveNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResSixStatus" id="ResSixStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResSixName" id="ResSixName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResSixTime" id="ResSixTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResSixNotes" id="ResSixNotes" size="40"></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResSevenStatus" id="ResSevenStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResSevenName" id="ResSevenName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResSevenTime" id="ResSevenTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResSevenNotes" id="ResSevenNotes" size="40"></td>
			</tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResEightStatus" id="ResEightStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResEightName" id="ResEightName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResEightTime" id="ResEightTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResEightNotes" id="ResEightNotes" size="40"></td>
			<tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResNineStatus" id="ResNineStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResNineName" id="ResNineName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResNineTime" id="ResNineTime"></td>
				<td style="width: 40%" class="style7"><input type="text" name="ResNineNotes" id="ResNineNotes" size="40"></td>
			</tr>
				<td style="width: 10%" class="style7"><input type="text" name="ResTenStatus" id="ResTenStatus" size="2"></td>
				<td style="width: 30%" class="style7"><input type="text" name="ResTenName" id="ResTenName" size="25"></td>
				<td style="width: 52%" class="style7"><input type="time" name="ResTenTime" id="ResTenTime"></td>
			 	<td style="width: 40%" class="style7"><input type="text" name="ResTenNotes" id="ResTenNotes" size="40"></td>
			<tr>
			</tr>
		</table>	
		<table style="width: 100%">
			<tr>
				<td style="width: 5%" class="style9"> <strong>
				<span class="style9"><input type="checkbox" id="NightKeyCount" name="NightKeyCount" value="1"></span></strong></td>
				<td colspan="3"> <strong><span class="style9">Key Count: ALL keys accounted for. MISSING KEYS MUST BE LOCATED ASAP! </span></strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> <input type="checkbox" id="NightMedications" name="NightMedications" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Medications made 
				available</strong></td>
				<td style="width: 5%" class="style9"></td>
				<td style="width: 45%" class="style9"></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightPhoneCalls" name="NightPhoneCalls" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Phone calls and 
				visitors logged in resident files</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightLevelChange" name="NightLevelChange" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Level Change 
				Clothing Distributed</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightPaperwork" name="NightPaperwork" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Paperwork on 
				intakes/releases completed</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightGarbage" name="NightGarbage" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Garbage Cans 
				Emptied</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightProbationOfficers" name="NightProbationOfficers" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Probation Officers 
				notified of hearings</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightCleaningCart" name="NightCleaningCart" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Cleaning Cart 
				cleaned and stocked</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightBuildingSecured" name="NightBuildingSecured" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Building outside 
				doors secured</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightMopBuckets" name="NightMopBuckets" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Mop buckets filled 
				with hot water</strong></td>
			</tr>
			<tr>
				<td style="width: 5%; height: 25px;" class="style9"><input type="checkbox" id="NightPositivePoints" name="NightPositivePoints" value="1"></td>
				<td style="width: 45%; height: 25px;" class="style9"><strong>
				Positive Points tallied</strong></td>
				<td style="width: 5%; height: 25px;" class="style9"><input type="checkbox" id="NightDishesWashed" name="NightDishesWashed" value="1"></td>
				<td style="width: 45%; height: 25px;" class="style9"><strong>All 
				dishes washed and put away</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightJDIS" name="NightJDIS" value="1"></td>
				<td style="width: 45%" class="style9"><strong>JDIS/Resident log 
				updated and verified</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightTimeSheets" name="NightTimeSheets" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Time sheets 
				accurate and initialed</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightIJOS" name="NightIJOS" value="1"></td>
				<td style="width: 45%" class="style9"><strong>IJOS Updates</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightControlRoom" name="NightControlRoom" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Control room neat, 
				clean, and orderly</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> <input type="checkbox" id="NightFileStatus" name="NightFileStatus" value="1"></td>
				<td style="width: 45%" class="style9"><strong>File Status Form 
				Updates</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightVisitationLetters" name="NightVisitationLetters" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Visitation letters 
				for new residents prepared</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> <input type="checkbox" id="NightHandbookTests" name="NightHandbookTests" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Handbook tests 
				given</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightBreakfastCount" name="NightBreakfastCount" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Breakfast meal 
				count called in</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> <input type="checkbox" id="NightSuppliesInventoried" name="NightSuppliesInventoried" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Supplies 
				Inventoried</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightCopies" name="NightCopies" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Made needed copies 
				of intake forms/etc.</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> <input type="checkbox" id="NightPillCount" name="NightPillCount" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Nightly Pill Count</strong></td>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightLaundry" name="NightLaundry" value="1"></td>
				<td style="width: 45%" class="style9"><strong>All Laundry 
				accounted for</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightReadFieldDirectives" name="NightReadFieldDirectives" value="1"></td>
				<td style="width: 45%" class="style9"><strong>READ Field Directives</strong></td>
				<td class="style9" colspan="2"><strong>Room Searches 
				Conducted:</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"><input type="checkbox" id="NightDetentionOrdersChecked" name="NightDetentionOrdersChecked" value="1"></td>
				<td style="width: 45%" class="style9"><strong>Detention Orders 
				Checked</strong></td>
				<td class="style9" colspan="2"><input type="text" name="NightRoomSearches" id="NightRoomSearches"></td>
			</tr>
			<tr>
				<td class="style9" colspan="2"><strong>All Employees read notes 
				and logs for shift:</strong></td>
				<td class="style9" colspan="2"><strong>Perimeter Check 
				Conducted By:</strong></td>
			</tr>
			<tr>
				<td style="height: 33px;" class="style9" colspan="2"><strong>
				<span class="style9">Initials: </span> </strong>
				<span class="style9"><input type="text" id="NightEmployeeInitials" name="NightEmployeeInitials"></span></td>
				<td style="height: 33px;" class="style9" colspan="2">&nbsp;<span class="style9"><input type="text" id="NightPerimeterCheck" name="NightPerimeterCheck"></span></td>
			</tr>
			<tr>
				<td class="style9" colspan="2"><strong>Shift Supervisor:</strong></td>
				<td style="width: 5%" class="style9">&nbsp;</td>
				<td style="width: 45%" class="style9">&nbsp;</td>
			</tr>
			<tr>
				<td class="style9" colspan="2"><strong>
				<span class="style9">Initials:
				</span>
				</strong><span class="style9"><input type="text" id="NightSupervisorInitials" name="NightSupervisorInitials"></span></td>
				<td style="width: 5%" class="style9">&nbsp;</td>
				<td style="width: 45%" class="style9">&nbsp;</td>
			</tr>
			</table>
		<table style="width: 100%">
			<tr>
				<td class="style12"><strong><span class="style16">Notes for 
				shift summary:</span></strong></td>
			</tr>
			<tr>
				<td class="style12"><textarea form="form" name="NightNotes" id="NightNotes" cols="60" rows="10" wrap="soft"></textarea></td>
			</tr>
			</table>
		<br>
		<input type="submit" value="Save Shift Summary" />
		</cfform>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%" class="style7">&nbsp;</td>
		<td colspan="4" class="style6" rowspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%" class="style7">&nbsp;</td>
	</tr>
</table>

</center>
</body>

</html>
