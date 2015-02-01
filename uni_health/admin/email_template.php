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
if (isset($_POST['submit']))
 {
    $name = $_POST['name'];
	$reason = $_POST['reason'];
    $appointment = $_POST['apt'];
	echo "Name: App Scheduled for Dec 2014";
echo "<table width='600' border='1'>";
//depending on your own parameters of course, but the values must be in single quotes
echo "<tr><td>Subject:Appointment_Reminder</td></tr></table><table width='600' height='150' border='1'><tr><td>Dear ".$name.",<br>This is a friendly reminder that your appointment for".$reason." is scheduled on ".$appointment.".<br> Please make sure to arrive 15 mins prior to your appointment to fill the requirments form </td></tr>";
//you can do this for as many rows as you like
echo "</table>";
//this ends your table

	$file=$_FILES['image']['tmp_name'];
	$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
	$image_name= addslashes($_FILES['image']['name']);
	move_uploaded_file($_FILES["image"]["tmp_name"],"photos/" . $_FILES["image"]["name"]);
	$location="photos/" . $_FILES["image"]["name"];

	$caption=$_POST['caption'];
	$insertsql="INSERT INTO photos (location, caption) VALUES ('".$location."','".$caption."')";
	$mysqli->query($insertsql);
	$sql="SELECT * FROM photos WHERE id in(SELECT max(id) from photos)";
	$result = $mysqli->query($sql);
	if ($result->num_rows > 0) 
	{
	   while($row = $result->fetch_assoc())
	   {
			echo '<div id="imagelist">';
			echo '<br><img src="'.$row['location'].'"><br>';
			echo '<br><br><br><br><id="caption">'.$row['caption'].'<br>';	
			echo '</div>';			
		}
	}		

		
}
else{
    echo "";
	}
?>
<br>

<form name="email_template" action="email_send.php" method="POST"> 
<input type="hidden" name="name" value="<?php echo $name ?>"/>
<input type="hidden" name="reason" value="<?php echo $reason ?>"/>
<input type="hidden" name="appointment" value="<?php echo $appointment ?>"/>
<input type="hidden" name="location" value="<?php echo $location ?>"/>
<input type="submit" name="submit" value="Send Mail"/>
</form>

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
