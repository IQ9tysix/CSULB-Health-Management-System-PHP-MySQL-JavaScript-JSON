<?php
session_start();
if ($_SESSION['auth']!='YES')
{
die("Not Authenticated");
}
$uname=$_SESSION['uname'];
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSULB</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script> 

</head>
<body class="subpage">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	
        <div id="site_title">
          <h1><font color="#FFFFFF">CSULB</font><br />
      <br /><span>CSULB Health Management</span></h1></div>
        
        
        
        <div class="cleaner"></div>
    </div>
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="success.php">Home</a></li>
            <li><a href="list.php">Student List</a></li>
            <li><a href="groups.php">Groups</a></li>
            <li><a href="camp.php">Campaign</a></li>
			<li><a href="settings.php"class="current">Settings</a></li>
			<li><a href="analysis.php">Analysis</a></li>
        </ul>    	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2> Settings </h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	    <h2>Email</h2>    

<p>
Name : App scheduled for Dec 2014</p>
<p align="right"> 
<a href= "generate.php" color="orange" >Edit</a>|<a href= "delete.php" color="orange" >Delete</a></p>
<table width='600' border='1'>
<tr><td>Subject:Appointment_Reminder
  </td>
  </tr>
  </table>
<table width='600' height='150' border='1'>
<tr><td>Dear {{name}},<br>This is a friendly reminder that your appointment for {{reason}} is scheduled on {{date}}<br> Please make sure to arrive 15 mins prior to your appointment to fill the requirments form.
 </td></tr>
</table>



<a class="more" href="logout.php">Logout</a>            <div class="cleaner"></div>
            </div>
          </div>
            <div class="cleaner"></div>
		</div>
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
        
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	
        Copyright © 2014 <a href="#">CSULB</a> - 
        Developed By: Karishma Mehta </a>  
    
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>









