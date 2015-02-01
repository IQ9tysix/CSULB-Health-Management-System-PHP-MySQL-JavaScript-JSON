<?php
session_start();
if ($_SESSION['auth']!='YES')
{
die("Not Authenticated");
}
$uname=$_SESSION['uname'];
function saveFile($viewName){
echo "function mein aaya";
			
	$servername = "mysql2.000webhost.com";
	$username = "a5599707_health";
	$password = "Kari_1412";
	$dbname = "a5599707_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);
			// Check connection
			if (!$conn) 
			{
				die("Connection failed: " . mysqli_connect_error());
			}
		
		   //$selected_text=$_POST['view_name'];
		   $sql=$_SESSION['sql'];
		   $sql_view= "create view uni_health_db.".$viewName." as ".$sql;
		   echo $sql_view;
		   if ($conn->query($sql_view) === TRUE) 
		    { 
                  echo "Table MyGuests created successfully";
			} 
			else
			{
                       echo "Error creating table: " . $conn->error;
            }
		   $selected_criteria= $_POST['criteria'];
		   $sql_create= "insert into view_criteria values('ABC','PQR')";
		   if (mysqli_query($conn, $sql_create)) 
		   {
				echo "New record created successfully";
           } 
		   else 
		   {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}
				$_SESSION['sql']='';
}
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
<script language="javascript" type="text/javascript">
function save() {
	alert(document.getElementById("view_name").innerHTML);
	$var=document.getElementById("view_name").innerHTML;
<?php saveFile()?>
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

<br />
<br>  
<?php

require_once("db_const.php");
// Create connection
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
// Check connection
if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }
if($_SESSION['display']=='yes'){
saveFile($_POST['view_name']);
$_SESSION['display']='';
}
if(isset($_POST['search']) && $_SESSION['display']=='')
{
	$_SESSION['display']='yes';
	$selected_val1 = $_POST['select1'];
	$selected_val2 = $_POST['select2'];
	$selected_val4 = $_POST['select4'];
	$selected_val5 = $_POST['select5'];
	$selected_val6 = $_POST['select6'];
	$selected_val3 = $_POST['option1'];
	$selected_val7 = $_POST['option2'];
	if($selected_val7==''){
	$selected_val4 = '';
	$selected_val5 = '';
	$selected_val6 = '';
	}
	$sql = "SELECT * FROM appscheduler_bookings";
	$_SESSION['sql']=$sql;
	echo "SQL Fired" . $sql;

	$result = $mysqli->query($sql);
	if ($result->num_rows > 0) 
	{
     echo "<h5> List of Students </h5>";
     echo "<table><tr><th>ID</th><th>Name</th><th>Email</th></tr>";
     // output data of each row
		while($row = $result->fetch_assoc())
		{
           echo "<tr><td>" . $row["student_id"]. "</td><td>" . $row["student_name"]. "</td><td>" . $row["student_email"]. "</td></tr>";
		}
        echo "</table><br>";
	}
	else
	{
     echo "No Records Found in the given filter criteria";
	}
	$mysqli->close();
}
else
{
	require_once("db_const.php");
	// Create connection
	$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	// Check connection
	if ($mysqli->connect_error)	
	{
     die("Connection failed: " . $conn->connect_error);
	} 

	$sql = "SELECT * FROM appscheduler_bookings";
	$result = $mysqli->query($sql);

	if ($result->num_rows > 0) 
	{
     echo "<h5> List of Students </h5>";
     echo "<table><tr><th>ID</th><th>Name</th><th>Email</th></tr>";
     // output data of each row
		while($row = $result->fetch_assoc())
		{
           echo "<tr><td>" . $row["student_id"]. "</td><td>" . $row["student_name"]. "</td><td>" . $row["student_email"]. "</td></tr>";
		}
		echo "</table>";
	}
	else
	{
     echo "0 results";
	}
}
?>
<br/>
<br/>
<form action="" method="POST">
<p>Save file as:<input type="text" name="view_name" />
<br>
<input type="submit" value="save">
</form>
<br><br>
<a href="list.php"><-Back to Search Criteria</a><br>
		
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