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
<title>FeedB Admin</title>
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
          <h1><font color="#FFFFFF">FeedB</font><br />
      <br /><span>R.A.I.T. Feedback Management</span></h1></div>
        
        
        
        <div class="cleaner"></div>
    </div>
    
    <div id="templatemo_menu">
<ul>
            <li><a href="success.php">Home</a></li>
            <li><a href="processfb.php">Process Feedback</a></li>
            <li><a href="viewrank.php" class="current">View Ranks</a></li>
            <li><a href="notifications.php">Reports</a></li>
        </ul>     	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>FeedB Administrator Home</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	    <h2>Faculty Rankings</h2>                
                <p><center><table cellpadding="3" border="1"><tr><th>Rank</th><th>Faculty ID</th><th>Name</th><th>Subject</th><th>Division</th></tr>
<?php
$branch=$_POST['branch'];
$sem=$_POST['sem'];
echo "<h5>Branch : ".$branch."<br>"."Semester : ".$sem."</h5>";
$host="feedb"; // Host name 
$username="Jamil-PC\Jamil"; // Mysql username 
$password=""; // Mssql password 
$db_name="feedb"; // Database name 
$tbl_name="fac_details"; // Table name
$conn= odbc_connect("$host","$username", "$password")or die("cannot connect");
$sql="UPDATE fac_details SET qfactorf = qfactoro+qfactors";
$result=odbc_exec($conn,$sql);
$sql="SELECT * FROM fac_details where semid=$sem AND facultyid LIKE '$branch%' ORDER BY qfactorf DESC";
$result=odbc_exec($conn,$sql); 
$i=1;       
while (odbc_fetch_row($result))
  {
  $facid=odbc_result($result,"facultyid");
  $facname=odbc_result($result,"facultyname");
  $subjid=odbc_result($result,"subjid");
  $division=odbc_result($result,"division");
  echo "<tr><td>".$i."</td>";
	$i++;
  echo "<td>".$facid."</td>";
  echo "<td>".$facname."</td>";
  echo "<td>".$subjid."</td>";
  echo "<td>".$division."</td></tr>";
  }     
?></table></center>
</p>
    
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
    	
        Copyright © 2012 <a href="#">FeedB</a> - 
        Developed By: Jamil Panki | Harsheel Shah | Ashish Pandya</a>  
    
    </div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>