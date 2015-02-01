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
if(isset($_POST['submit']))
{
 $name=$_POST['name'];
$reason=$_POST['reason'];
$appointment=$_POST['appointment'];
$location=$_POST['location'];
$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername,$username,$password,$dbname);
// Check connection
if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }
   $name=$_POST['name'];
   $sql = "SELECT student_email FROM appscheduler_bookings where student_name='".$name."'";
      
	$result = $mysqli->query($sql);
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc())
		{
                       $to= $row["student_email"];
			$subject  = 'Appointment Reminder';
			$message  = 'Dear '.$name.'<br> This is a friendly reminder that your appointment for '.$reason.' is scheduled on '.$appointment.'.<br>Please make sure to arrive mins prior to your appointment to fill the requirement forms';
			$headers  = 'From: m.karish14@gmail.com' . "\r\n" .
            'Reply-To: m.karish14@gmail.com' . "\r\n" .
            'MIME-Version: 1.0' . "\r\n" .
            'Content-type: text/html; charset=iso-8859-1' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();
			mail($to, $subject, $message, $headers);

		}

	}
    echo "Email sent successfully";
    echo '<a href="settings.php"><br>'."Back to email";

	$insertsql = "insert into email_sent(name,reason,appointment_date,image_link) values('".$name."','".$reason."','".$appointment."','".$location."');";
	$result1 = $mysqli->query($insertsql);
	
	$mysqli->close();
}
?>