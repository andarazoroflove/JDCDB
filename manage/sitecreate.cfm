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
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	color: #fff;
	text-align: center;
	text-decoration: underline;
}
.style8 {
	font-family: Arial, Helvetica, sans-serif;
	color: #fff;
	text-align: center;
	background-color: #FFFFFF;
}
.style9 {
	color: #000000;
}
.style10 {
	font-family: Arial, Helvetica, sans-serif;
	color: #fff;
	text-align: center;
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
		</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style7"><strong>Create a New Site:</strong></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style10">
		
		<center>
		<cfform method="post" action="siteinsert.cfm" id="siteform">
		<table style="width: 80%" class="style8">
			<tr class="style6">
				<td style="width: 25%" class="style9">Site Name:</td>
				<td><input type="text" name="SiteName" id="SiteName" size="40"></td>
			</tr>
			<tr class="style6">
				<td style="width: 25%" class="style9">Status:</td>
				<td>

				<select id="Status" name="Status" >
   				<option value="True" selected="selected">Active</option>				
    			<option value="False">Inactive</option>
			 	</select>
				
				</td>
			</tr>
			<tr class="style6">
				<td style="width: 25%"></td>
				<td></td>
			</tr>
		</table>
		<input type="submit" value="Create Site" />
		</cfform>
		</center>	

		
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
