﻿<?php
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
            <li><a href="list.php" >Students List</a></li>
            <li><a href="groups.php">Groups</a></li>
            <li><a href="camp.php">Campaigns</a></li>
			<li><a href="settings.php" class="current">Settings</a></li>
			<li><a href="analysis.php">Analysis</a></li>
	
        </ul>     	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>CSULB Health Management</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	  

</form>

	<style>
table, th, td {
     border: 1px solid black;
}
</style>
 <form method="POST" name= "delete.php" action="#">

<?php
	$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($mysqli->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM email_sent";
$result = $mysqli->query($sql);
if ($result->num_rows > 0) 
{
   echo "<h5> List of Emails </h5>";
   echo "<table><tr><th>Selection</th><th>ID</th><th>Name</th><th>Reason</th><th> Appointment_Date</th></tr>";
     // output data of each row
   while($rek = $result->fetch_assoc())
	{
         $wec = $rek['id'];
		 echo "<tr class='brndTab'>";
         echo "<td class='brndTa'><input type='checkbox' name='deletez[]' value='$wec'></td>";
		    
		 echo "<td class='brndTab'>".$rek["id"]."</td>";	
		 echo "<td class='brndTab'>".$rek["name"]."</td>";
         echo "<td class='brndTab'>".$rek["reason"]."</td>";
         echo "<td class='brndTab1'>".$rek["appointment_date"]."</td>";
         echo "</tr>";

	}		
	echo "</table>";
	echo "<td><input type='submit' name='delete' id='delete' value='Delete'></td></tr></form>";
	if(isset($_POST['delete'])) 
	{			
		
				foreach($_POST['deletez'] as $wec) 
				{
			
					$sql_delete = "DELETE FROM email_sent WHERE id =".$wec."";
					$mysqli->query($sql_delete);
				}	 
		
			$sql_refresh = "SELECT * FROM email_sent";
			$result_r = $mysqli->query($sql_refresh);
			if ($result_r->num_rows > 0) 
			{
				echo "<h5> List of Current Emails </h5>";
				echo "<table><tr><th>ID</th><th>Name</th><th>Reason</th><th> Appointment_Date</th></tr>";
				while($row = $result_r->fetch_assoc())
				{
					echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"]. "</td><td>" . $row["reason"]. "</td><td>" . $row["appointment_date"]."</td></tr>";
				}
				echo "</table><br>";
			}	
		}
		$mysqli->close();
	}	
?>

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










