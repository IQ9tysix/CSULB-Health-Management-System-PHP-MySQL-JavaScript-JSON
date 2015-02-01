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
            <li><a href="list.php">Students List</a></li>
            <li><a href="groups.php">Groups</a></li>
            <li><a href="camp.php">Campaigns</a></li>
			<li><a href="settings.php">Settings</a></li>
			<li><a href="analysis.php" class="current">Analysis</a></li>
        </ul>     	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>Analysis Tab</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	
			
<form action="#" method="POST">
<select name="selectval1"
  <option value="select">---</option>
  <option value="student_city">Student City</option>
  <option value="student_notes">Student disease</option>
  <option value="student_name">Student Name</option>
</select>
<input type="submit" name="submit" value="Submit">
</input>
</form>
<?php
$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

$selected_val1="Student City";
 if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }
if(isset($_POST['submit']))
{

    $mysqli->query("truncate table abc");

  $selected_val1=$_POST['selectval1'];
       $sql= "insert into abc(select ".$selected_val1.",count(*) from appscheduler_bookings group by ".$selected_val1.")";
       $mysqli->query($sql); 
}
  $result_1 = $mysqli->query('SELECT * FROM abc');


  $rows = array();
  $table = array();
  $table['cols'] = array(

    array('label' => ''.$selected_val1.'', 'type' => 'string'),
    array('label' => 'Count', 'type' => 'number')

);
    foreach($result_1 as $r) {

      $temp = array();


      $temp[] = array('v' => (string) $r['student_name']); 

      $temp[] = array('v' => (int) $r['count(*)']); 
      $rows[] = array('c' => $temp);
    }

$table['rows'] = $rows;

$jsTable = json_encode($table);


?>


<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript">
    google.load('visualization', '1', {'packages':['corechart']});
    google.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = new google.visualization.DataTable(<?=$jsTable?>);
      var options = {
           title: 'Analysis',
          is3D: 'true',
          width: 800,
          height: 600
        };
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
    </script>
  </head>

  <body>
    <!--this is the div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
  
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
  
</html>


