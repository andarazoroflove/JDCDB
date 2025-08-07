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
	font-size: small;
}
a.button2 {
    padding: 1px 6px;
    border: 1px outset buttonborder;
    border-radius: 3px;
    color: buttontext;
    background-color: buttonface;
    text-decoration: none;
}
.style11 {
	background-color: #FFFFFF;
}
</style>
</head>
<cfset varToday = #DateFormat(Now(), "yyyy-mm-dd")#>
<cfquery name="qryNight" datasource="jdcdb">
	SELECT *
	FROM ShiftSummaryNight
	WHERE NightID = #url.NightID#
</cfquery>


<cfset varResOneTime = "#qryNight.ResOneTime#">
<cfset lenResOneTime = left(varResOneTime, len(varResOneTime) -11)>
<cfset varResTwoTime = "#qryNight.ResTwoTime#">
<cfset lenResTwoTime = left(varResTwoTime, len(varResTwoTime) -11)>
<cfset varResThreeTime = "#qryNight.ResThreeTime#">
<cfset lenResThreeTime = left(varResThreeTime, len(varResThreeTime) -11)>
<cfset varResFourTime = "#qryNight.ResFourTime#">
<cfset lenResFourTime = left(varResFourTime, len(varResFourTime) -11)>
<cfset varResFiveTime = "#qryNight.ResFiveTime#">
<cfset lenResFiveTime = left(varResFiveTime, len(varResFiveTime) -11)>
<cfset varResSixTime = "#qryNight.ResSixTime#">
<cfset lenResSixTime = left(varResSixTime, len(varResSixTime) -11)>
<cfset varResSevenTime = "#qryNight.ResSevenTime#">
<cfset lenResSevenTime = left(varResSevenTime, len(varResSevenTime) -11)>
<cfset varResEightTime = "#qryNight.ResEightTime#">
<cfset lenResEightTime = left(varResEightTime, len(varResEightTime) -11)>
<cfset varResNineTime = "#qryNight.ResNineTime#">
<cfset lenResNineTime = left(varResNineTime, len(varResNineTime) -11)>
<cfset varResTenTime = "#qryNight.ResTenTime#">
<cfset lenResTenTime = left(varResTenTime, len(varResTenTime) -11)>

<body style="color: #FFFFFF; background-color: #FF9933">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='shiftsummaryday.cfm'" type="button" align="left"><i class="fa fa-sun-o"></i> Create New Night Summary</button>		
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
		<cfform method="post" action="shiftsummarynightedit.cfm?NightID=#url.NightID#" id="form">
		<table style="width: 100%">
			<tr>
				<td style="width: 33%"><strong>Date: </strong><cfoutput>#qryNight.NightDate#</cfoutput></td>
				<td style="width: 33%"></td>
				<td style="width: 33%" class="style10"><strong>SUMMARY FINALIZED</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><strong>Head Count Male: </strong> </td>
				<td style="width: 33%"><strong>Head Count Female:&nbsp;</strong></td>
				<td style="width: 33%"><strong>Head Count Total:</strong></td>
			</tr>
			<tr>
				<td style="width: 33%"><cfoutput>#qryNight.NightHeadCountMale#</cfoutput></td>
				<td style="width: 33%"><cfoutput>#qryNight.NightHeadCountFemale#</cfoutput></td>
				<td style="width: 33%"><cfoutput>#qryNight.NightHeadCountTotal#</cfoutput></td>
			</tr>
			<tr>
				<td colspan="3"><strong>Intakes Total: <cfoutput>#qryNight.NightIntakesTotal#</cfoutput> Releases Total: <cfoutput>#qryNight.NightReleasesTotal#</cfoutput></strong></td>
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
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResOneStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResOneName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResOneTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResOneNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResTwoStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResTwoName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResTwoTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResTwoNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResThreeStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResThreeName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResThreeTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResThreeNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResFourStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResFourName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResFourTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResFourNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResFiveStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResFiveName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResFiveTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResFiveNotes#</cfoutput></td>
			</tr>						<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResSixStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResSixName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResSixTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResSixNotes#</cfoutput></td>
			</tr>			
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResSevenStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResSevenName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResSevenTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResSevenNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResEightStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResEightName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResEightTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResEightNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResNineStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResNineName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResNineTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResNineNotes#</cfoutput></td>
			</tr>
			<tr>
				<td style="width: 10%" class="style7"><cfoutput>#qryNight.ResTenStatus#</cfoutput></td>
				<td style="width: 30%" class="style7"><cfoutput>#qryNight.ResTenName#</cfoutput></td>
				<td style="width: 20%" class="style7"><cfoutput>#lenResTenTime#"</cfoutput></td>
				<td style="width: 40%" class="style7"><cfoutput>#qryNight.ResTenNotes#</cfoutput></td>
			</tr>	
		</table>		
		<table style="width: 100%">
			<tr>
				<td style="width: 5%" class="style9"> <strong>
				<span class="style9">				
				<cfoutput>
				<cfif IsDefined('qryNight.NightKeyCount') and qryNight.NightKeyCount EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</span></strong></td>
				<td colspan="3"> <strong><span class="style9">Key Count: ALL keys accounted for. MISSING KEYS MUST BE LOCATED ASAP! </span></strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> 
				<cfoutput>
				<cfif IsDefined('qryNight.NightMedications') and qryNight.NightMedications EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Medications made 
				available</strong></td>
				<td style="width: 5%" class="style9">
					</td>
				<td style="width: 45%" class="style9"></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightPhoneCalls') and qryNight.NightPhoneCalls EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Phone calls and 
				visitors logged in resident files</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightLevelChange') and qryNight.NightLevelChange EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Level Change 
				Clothing Distributed</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightPaperwork') and qryNight.NightPaperwork EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Paperwork on 
				intakes/releases completed</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightGarbage') and qryNight.NightGarbage EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Garbage Cans 
				Emptied</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightProbationOfficers') and qryNight.NightProbationOfficers EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Probation Officers 
				notified of hearings</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightCleaningCart') and qryNight.NightCleaningCart EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Cleaning Cart 
				cleaned and stocked</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightBuildingSecured') and qryNight.NightBuildingSecured EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Building outside 
				doors secured</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightMopBuckets') and qryNight.NightMopBuckets EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Mop buckets filled 
				with hot water</strong></td>
			</tr>
			<tr>
				<td style="width: 5%; height: 25px;" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightPositivePoints') and qryNight.NightPositivePoints EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%; height: 25px;" class="style9"><strong>
				Positive Points tallied</strong></td>
				<td style="width: 5%; height: 25px;" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightDishesWashed') and qryNight.NightDishesWashed EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%; height: 25px;" class="style9"><strong>All 
				dishes washed and put away</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightJDIS') and qryNight.NightJDIS EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>JDIS/Resident log 
				updated and verified</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightTimeSheets') and qryNight.NightTimeSheets EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Time sheets 
				accurate and initialed</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightIJOS') and qryNight.NightIJOS EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>IJOS Updates</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightControlRoom') and qryNight.NightControlRoom EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Control room neat, 
				clean, and orderly</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> 
				<cfoutput>
				<cfif IsDefined('qryNight.NightFileStatus') and qryNight.NightFileStatus EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>File Status Form 
				Updates</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightVisitationLetters') and qryNight.NightVisitationLetters EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Visitation letters 
				for new residents prepared</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> 
				<cfoutput>
				<cfif IsDefined('qryNight.NightHandbookTests') and qryNight.NightHandbookTests EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Handbook tests 
				given</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightBreakfastCount') and qryNight.NightBreakfastCount EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Breakfast meal 
				count called in</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> 
				<cfoutput>
				<cfif IsDefined('qryNight.NightSuppliesInventoried') and qryNight.NightSuppliesInventoried EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Supplies 
				Inventoried</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightCopies') and qryNight.NightCopies EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Made needed copies 
				of intake forms/etc.</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9"> 
				<cfoutput>
				<cfif IsDefined('qryNight.NightPillCount') and qryNight.NightPillCount EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Nightly Pill Count</strong></td>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightLaundry') and qryNight.NightLaundry EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>All Laundry 
				accounted for</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightReadFieldDirectives') and qryNight.NightReadFieldDirectives EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>READ Field Directives</strong></td>
				<td class="style9" colspan="2"><strong>Room Searches 
				Conducted:</strong></td>
			</tr>
			<tr>
				<td style="width: 5%" class="style9">
				<cfoutput>
				<cfif IsDefined('qryNight.NightDetentionOrdersChecked') and qryNight.NightDetentionOrdersChecked EQ "1">
				<img src="images/checked.png">
				<cfelse>
				<img src="images/unchecked.png">
				</cfif>
				</cfoutput>					</td>
				<td style="width: 45%" class="style9"><strong>Detention Orders 
				Checked</strong></td>
				<td class="style9" colspan="2"><cfoutput>#qryNight.NightRoomSearches#</cfoutput></td>
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
				<span class="style9"><cfoutput>#qryNight.NightEmployeeInitials#</cfoutput></span></td>
				<td style="height: 33px;" class="style9" colspan="2">&nbsp;<span class="style9"><cfoutput>#qryNight.NightPerimeterCheck#</cfoutput></span></td>
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
				</strong><span class="style9"><cfoutput>#qryNight.NightSupervisorInitials#</cfoutput></span></td>
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
				<td class="style12"><cfoutput>#qryNight.NightNotes#</cfoutput></td>
			</tr>
			</table>
		<br>
		<input type="submit" value="Edit Shift Summary" onclick="return confirm('Reopen this report?')" />
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
