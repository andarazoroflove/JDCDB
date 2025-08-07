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
  background-color: Green;
}
</style>
</head>

<body style="background-color: #99CC00">
<center>

<table style="width: 60%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="6">
		<button class="btn" onclick="location.href='index.cfm'" type="button" align="left"><i class="fa fa-home"></i> Home</button>
		<button class="btn" onclick="location.href='snackoptions.cfm'" type="button" align="left"><i class="fa fa-cutlery"></i> Snacks</button>		
		<button class="btn" onclick="location.href='snackreports.cfm'" type="button" align="left"><i class="fa fa-table"></i> Snack Reports</button>
		<button class="btn" onclick="location.href='mealreportsearch.cfm'" type="button" align="left"><i class="fa fa-table"></i> Meal Reports</button>
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
		<td colspan="4"><strong><span class="style1"><center>Meal Reports</center>
		</span></strong>
		<hr>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">
		<cfform method="post" action="mealreportsview.cfm" id="mealform">
		<table style="width: 100%">
			<tr>
				<td style="width: 15%"><cfoutput><input type="date" name="mealdate" id="mealdate" value="#DateFormat(Now(), "yyyy-mm-dd")#" required></cfoutput></td>
				<td style="width: 40%">&nbsp;</td>
				<td style="width: 15%">&nbsp;</td>
				<td style="width: 30%">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 15%"><input type="submit" value="Choose Date" /></td>
				<td style="width: 40%">&nbsp;</td>
				<td style="width: 15%">&nbsp;</td>
				<td style="width: 30%">&nbsp;</td>
			</tr>
		</table>
		</cfform>
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2">
		&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
	</tr>
</table>

</center>
</body>

</html>
