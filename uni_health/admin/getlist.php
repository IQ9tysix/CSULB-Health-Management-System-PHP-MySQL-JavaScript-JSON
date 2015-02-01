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
if(isset($_POST['search']))
{
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
		
	if($selected_val7=='' && $selected_val3 !='')
	{
	  $sql = "SELECT * FROM appscheduler_bookings where " . $selected_val1 . " " . $selected_val2 . " '" . $selected_val3 . "' ";
	  $criteria = $selected_val1 . " " . $selected_val2 . " " . $selected_val3;
	  }
	else if($selected_val7=='' && $selected_val3=='')
	{
		$sql = "SELECT * FROM appscheduler_bookings";
		$criteria = "No Criteria";
	}
	else 
	{
	  $sql = "SELECT * FROM appscheduler_bookings where " . $selected_val1 . " " . $selected_val2 . " '" . $selected_val3 . "' " . $selected_val4 . " " . $selected_val5 . " " . $selected_val6 . " '" . $selected_val7 ."'";                                         
      $criteria =  $selected_val1 . " " . $selected_val2 . " " . $selected_val3 . " " . $selected_val4 . " " . $selected_val5 . " " . $selected_val6 . " " . $selected_val7;  
    }
	
	
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
?>
<form name="getlist" action="saveview.php" method="post">
<p>Give view name as view_</p>
<p>Save file as:<input type="text" name="view_name" />
<br><input type="hidden" name="query" value="<?php echo $sql ?>"/>
<input type="hidden" name="criteria" value="<?php echo $criteria ?>"/>
</br>
<input type="submit" value="Save" name="save" />
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