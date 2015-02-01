<?php
session_start();
if ($_SESSION['auth']!='YES')
{
die("Not Authenticated");
}
$uname=$_SESSION['uname'];
$_SESSION['display']='';
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
            <li><a href="list.php" class="current">Students List</a></li>
            <li><a href="groups.php">Groups</a></li>
            <li><a href="camp.php">Campaigns</a></li>
			<li><a href="settings.php">Settings</a></li>
	
        </ul>     	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>Students Lists</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	
			
	<style>
table, th, td {
     border: 1px solid black;
}
</style>
<h5> Filter Records:</h5>
<form action="getresult.php" method="post">
<select name="select1">
  <option value="select">---</option>
  <option value="student_name">Student Name</option>
  <option value="student_city">Student City</option>
  <option value="student_state">Student State</option>
  <option value="student_zip">Student Zip</option>
  <option value="student_dob">Student DOB</option>
  <option value="appointment_d">Appointment Date</option>
</select>
<select name="select2">
  <option value="select">---</option>
  <option value="=">=</option>
  <option value=">">></option>
  <option value="<"><</option>
  <option value="<="><=</option>
  <option value=">=">>=</option> 
</select> 
<input type="text" name="option1" /><br />

<select name="select4">
  <option value="select">---</option>
  <option value="OR">OR</option>
  <option value="AND">AND</option>
  <option value="NOT">NOT</option>
</select> </br>
<select name="select5"
  <option value="select">---</option>
  <option value="student_name">Student Name</option>
  <option value="student_city">Student City</option>
  <option value="student_state">Student State</option>
  <option value="student_zip">Student Zip</option>
  <option value="student_dob">Student DOB</option>
  <option value="appointment_d">Appointment Date</option>
  
</select>
<select name="select6">
  <option value="select">---</option>
  <option value="=">=</option>
  <option value=">">></option>
  <option value="<"><</option>
  <option value="<="><=</option>
  <option value=">=">>=</option> 
</select> 
<input type="text" name="option2" />
<input type="submit" name="search" value="Search" />
</form>
<br />
<br>  


		
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
        Developed By: Karishma Mehta</a>  
    
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>