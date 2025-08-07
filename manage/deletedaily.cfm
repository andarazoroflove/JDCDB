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
  background-color: Red;
}
.style6 {
	text-decoration: underline;
}
</style>
</head>

<body style="color: #FFFFFF; background-color: #800080">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='../index.cfm'" type="button" align="left"><i class="fa fa-home"></i> JDCDB Home</button>
		
		<button class="btn" onclick="location.href='users.cfm'" type="button" align="left"><i class="fa fa-users"></i> Users</button>	
		<button class="btn" onclick="location.href='sites.cfm'" type="button" align="left"><i class="fa fa-building"></i> Sites</button>	
		<button class="btn" onclick="location.href='deletedaily.cfm'" type="button" align="left"><i class="fa fa-eraser"></i> Log Maintenance</button>
		<button class="btn" onclick="location.href='deleteincident.cfm'" type="button" align="left"><i class="fa fa-trash-o"></i> Incident Maintenance</button>
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
		<td colspan="4"><strong><span class="style1"><center>Juvenile Detention Center Database 
		Setup</center></span></strong><hr>
		<br />
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">&nbsp;</td>
	</tr>
	<tr>
	
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2"><center>&nbsp;<img src="../images/warning.gif"><br /><br />
		<strong>THIS BUTTON:</strong><br />
		<br />
		<button class="btn" onclick="location.href='truncatelogs.cfm'" type="button" align="center"><i class="fa fa-exclamation"></i> CLEAR ALL DAILY LOGS</button>
		<br />
		<br />
		<strong>WILL IMMEDATELY ELIMINATE ALL DAILY LOGS IN THE DATABASE<br />
		<br />
		THIS BUTTON:<br />
		<br />
		<button class="btn" onclick="location.href='truncatedaysummaries.cfm'" type="button" align="center"><i class="fa fa-exclamation"></i> CLEAR ALL DAY SHIFT SUMMARIES</button>
		<br />
		<br />
				WILL IMMEDATELY ELIMINATE ALL DAY TIME SHIFT SUMMARIES IN THE DATABASE<br />
		<br />
		THIS BUTTON:<br />
		<br />
		<button class="btn" onclick="location.href='truncatenightsummaries.cfm'" type="button" align="center"><i class="fa fa-exclamation"></i> CLEAR ALL NIGHT SHIFT SUMMARIES</button>
		<br />
		<br />
				WILL IMMEDATELY ELIMINATE ALL DAY TIME SHIFT SUMMARIES IN THE DATABASE<br />
		<br />
		THIS BUTTON:<br />
		<br />
		<button class="btn" onclick="location.href='truncatedirectives.cfm'" type="button" align="center"><i class="fa fa-exclamation"></i> CLEAR ALL FIELD DIRECTIVES</button>
		<br />
		<br />
		WILL IMMEDATELY ELIMINATE ALL FIELD DIRECTIVES IN THE DATABASE<br />
		<br />
		THIS BUTTON:<br />
		<br />
		<button class="btn" onclick="location.href='truncatesnacks.cfm'" type="button" align="center"><i class="fa fa-exclamation"></i> CLEAR ALL SNACK LOGS</button>
		<br />
		<br />
		WILL IMMEDATELY ELIMINATE ALL SNACK LOGS IN THE DATABASE<br />
		<br />
		<span class="style6">ALL OF THESE ACTIONS ARE IRREVERSABLE, ENSURE 
		BACKUPS EXIST BEFORE CLEARING!</span></strong><br />
		</td>
	</center>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>

</center>
</body>

</html>
