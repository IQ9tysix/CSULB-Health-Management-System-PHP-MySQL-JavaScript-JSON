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
            <li><a href="camp.php" class="current">Campaign</a></li>
			<li><a href="settings.php">Settings</a></li>
			<li><a href="analysis.php">Analysis</a></li>
        </ul>    	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>Campaign</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	    <h2>Select below</h2>    
<?php				
$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);
// Create connection
if (!$mysqli) {
  exit('Connect Error (' . mysqli_connect_errno() . ') '
       . mysqli_connect_error());
}	   

?>
<form action="" method="POST">

    <div class="label">Select List:</div>

    <select name="names">
    <option value = "">---Select---</option>
    <?php
    $queryusers = "SELECT view_name FROM criteria_groups ";
    $db = mysqli_query($mysqli, $queryusers);
	while ( $d=mysqli_fetch_assoc($db)) {
     echo "<option value='".$d['view_name']."'>".$d['view_name']."</option>";
    }
	?>
      </select>  
<input type="checkbox" name="checkbox1" id="checkbox_id" value="send email prior 3 days of appointment">
<label for="checkbox_id">3 days prior appointment</label>
<input type="checkbox" name="checkbox2" id="checkbox_id1" value="send email prior 1 day of appointment">
<label for="checkbox_id1">1 day prior appointment</label>
<input type="submit" value="Save" name="save" />		
</form>

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
if(isset($_POST['save']))
{
	if(isset($_POST['checkbox1']) && isset($_POST['checkbox2'])) 
	{
       $viewname = $_POST['names'];

	$sql = "insert into email_table(student_email,student_notes,appointment_modified_d,days_before)select student_email,student_notes,date_sub(appointment_d,interval 3 day),'3'from ".$viewname;
	$mysqli->query($sql);
	$sql = "insert into email_table(student_email,student_notes,appointment_modified_d,days_before)select student_email,student_notes,date_sub(appointment_d,interval 1 day),'1'from ".$viewname;
	$mysqli->query($sql);
	$sql = "insert into campaign_list(compaign_name,campaign_criteria1,campaign_criteria2) values('".$viewname."','Yes','Yes')";
	if (mysqli_query($mysqli, $sql)) {
    echo "New record created successfully";
    } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
}
	$mysqli->close();
}
 else if(isset($_POST['checkbox1']))
{
	$viewname = $_POST['names'];
    $sql = "insert into email_table(student_email,student_notes,appointment_modified_d,days_before)select student_email,student_notes,date_sub(appointment_d,interval 3 day),'3'from ".$viewname;
	$mysqli->query($sql);
	$sql = "insert into campaign_list(compaign_name,campaign_criteria1,campaign_criteria2) values('".$viewname."','Yes','No')";
	if (mysqli_query($mysqli, $sql)) 
	{
       echo "New record created successfully";
    } else 
	{
    echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
    }

	
	$mysqli->close();
} else 
{
	$viewname = $_POST['names'];
    $sql = "insert into email_table(student_email,student_notes,appointment_modified_d,days_before)select student_email,student_notes,date_sub(appointment_d,interval 1 day),'1'from ".$viewname;
	$mysqli->query($sql);
	$sql = "insert into campaign_list(compaign_name,campaign_criteria1,campaign_criteria2) values('".$viewname."','No','Yes')";
	if (mysqli_query($mysqli, $sql)) 
	{
      // echo "New record created successfully";
    } else 
	{
       echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
    }

	$mysqli->close();
}
}
?>
<br>
<h4> List of campaigns</h4>
<style>
table, th, td {
     border: 1px solid black;
}
</style>
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
$sql = "SELECT * FROM campaign_list";
$result = $mysqli->query($sql);
	if ($result->num_rows > 0) 
	{
     echo "<table><tr><th>Campaign Name</th><th>3 days prior to appointment</th><th>1 day prior to appointment</th></tr>";
     // output data of each row
		while($row = $result->fetch_assoc())
		{
           echo "<tr><td>" . $row["compaign_name"]. "</td><td>" . $row["campaign_criteria1"]. "</td><td>" . $row["campaign_criteria2"]. "</td></tr>";
		}
        echo "</table><br>";
	}
	else
	{
     echo "No Records Found in the given filter criteria";
	}
	$mysqli->close();
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