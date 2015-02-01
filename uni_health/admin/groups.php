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
            <li><a href="list.php" >Students List</a></li>
            <li><a href="groups.php" class="current">Groups</a></li>
            <li><a href="camp.php">Campaigns</a></li>
			<li><a href="settings.php">Settings</a></li>
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


<?php
	$$servername = "mysql8.000webhost.com";
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
$sql = "SELECT * FROM criteria_groups";
//	echo "". $sql;

	$result = $mysqli->query($sql);
	if ($result->num_rows > 0) 
	{
     echo "<h5> List of Groups </h5>";
     echo "<table><tr><th>Group Name</th><th>Criteria</th></tr>";
     // output data of each row
		while($row = $result->fetch_assoc())
		{
           echo "<tr><td>" . $row["view_name"]. "</td><td>" . $row["view_criteria"]. "</td></tr>";
		}
        echo "</table><br>";
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
        Developed By: Karishma Mehta</a>  
    
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>