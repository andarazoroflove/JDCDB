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
	text-align: left;
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
	text-decoration: underline;
}
.style9 {
	text-decoration: none;
}
</style>

<cfquery name="qryUserActive" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID != '28' AND Archived != 'TRUE'
</cfquery>
<cfquery name="qryUserInactive" datasource="jdcdb">
	SELECT *
	FROM Officers
	WHERE UserID != '28' AND Archived != 'FALSE'
</cfquery>


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
		<td colspan="4" class="style7"><strong>User Maintenance 
		Menu:</strong></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style7"></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2"><span class="fa-inverse">
		<a href="usercreate.cfm" class="style9"><i class="fa fa-user-plus"></i> Create a New 
		User</a></span></td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style2">&nbsp;</td>
	</tr>
	<tr>
		<td style="width: 5%" class="style5">&nbsp;</td>
		<td style="width: 2%">&nbsp;</td>
		<td colspan="4" class="style3" rowspan="2">		
		<table style="width: 100%">
			<tr>
			<td style="width: 50%">
				
				<table width="100%" align="left">
				<tr><td class="style8"><i class="fa fa-users"></i>Active Users:</td></tr>
				<tr><td></td></tr>
				<cfoutput query="qryUserActive">
				<tr>
				<td align="left">
				<a href="useredit.cfm?UserID=#UserID#&Edited=3" class="style9">#qryUserActive.Lastname#, #qryUserActive.FirstName#</a></td>
				</tr>
				</cfoutput>
				</table>
				</td>
				<td style="width: 50%">
				<table width="100%" align="left">
				<tr><td class="style8"><i class="fa fa-users"></i>Inactive Users:</td></tr>
				<tr><td></td></tr>
				<cfoutput query="qryUserInactive">
				<tr>
				<td align="left">
				<a href="useredit.cfm?UserID=#UserID#&Edited=3" class="style9">#qryUserInactive.Lastname#, 
				#qryUserInactive.FirstName#</a></td>
				</tr>
				</cfoutput>
				</table>
				</td>
			</tr>
		</table>
		
		
		
		
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
