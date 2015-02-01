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
      <br />
      <span><font size="+0.5">CSULB Health Management</font></span></h1></div>
        
        
        
        <div class="cleaner"></div>
    </div>
    
    <div id="templatemo_menu">
   	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_middle_subpage">
    	<h2>Feedback Survey</h2>
  	</div>
        
    <div id="templatemo_main">

        <div class="col_w900 col_w900_last">
            <div class="col_w580 float_l">
           	  <div class="news_box">
           	    <h2>Feedback</h2>                
                <p><form action="#" method="post" name="feedback">
                 First Name: <input type="text" name="firstname" /><br />
				 Last Name: <input type="text" name="lastname" /><br />
				 Address : &nbsp;&nbsp;&nbsp;<textarea name="address" rows="2" cols="21"></textarea><br />
				 Gender : <input type="radio" name="sex" value="Male" checked>Male <br>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="sex" value="Female">Female <br />
				 Age Range :<br><select name="age">
								<option value="12-18">12-18</option>
								<option value="19-30">19-30</option>
								<option value="30-40">30-40</option>
								<option value=">40">>40</option></select> 
				 <br>How would you rate our facility on 
				 <br> Cleanliness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="cleanliness" value="great" checked>Great&nbsp;&nbsp;<input type="radio" name="cleanliness" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="cleanliness" value="good">Good&nbsp;&nbsp;<input type="radio" name="cleanliness" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="cleanliness" value="poor"> Poor <br>
				     Up-to-date Facilities &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="facility" value="great" checked>Great&nbsp;&nbsp;<input  type="radio" name="facility" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="facility" value="good">Good&nbsp;&nbsp;<input type="radio" name="facility" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="facility" value="poor"> Poor <br>
				     Comfort &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="comfort" value="great" checked>Great&nbsp;&nbsp;<input type="radio" name="comfort" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="comfort" value="good">Good&nbsp;&nbsp;<input type="radio" name="comfort" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="comfort" value="poor"> Poor <br>
				   	<br>How would you rate our staff on 
					 <br>Responsiveness &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="res" value="great" checked>Great&nbsp;&nbsp;<input type="radio" name="res" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="res" value="good">Good&nbsp;&nbsp;<input type="radio" name="res" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="res" value="poor"> Poor <br>
     				 <br>Friendliness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="friend" value="great" checked>Great&nbsp;&nbsp;<input type="radio" name="friend" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="friend" value="good">Good&nbsp;&nbsp;<input type="radio" name="friend" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="friend" value="poor"> Poor <br>
				 
					 <br>Helpfulness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="help" value="great" checked>Great&nbsp;&nbsp;<input type="radio" name="help" value="very good"> Very Good&nbsp;&nbsp;<input type="radio" name="help" value="good">Good&nbsp;&nbsp;<input type="radio" name="help" value="satisfactory"> Satisfactory&nbsp;&nbsp;<input type="radio" name="help" value="poor"> Poor <br>
				<br> Provide suggestions if any <br> <textarea name= "suggestion" "rows="4" cols="50"> </textarea>
				 </p>
				<input type="submit"value="Submit" name="submit" /></form>
<?php
    const DB_HOST = 'mysql8.000webhost.com';
	const DB_USER = 'a6582782_health';
	const DB_PASS = 'Kari_1412';
	const DB_NAME = 'a6582782_health';

$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
// Check connection
if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }

	
if(isset($_POST['submit']))
{
 $firstname = $_POST['firstname'];
 $lastname = $_POST['lastname'];
 $address = $_POST['address'];
 if(isset($_POST['sex']))
    $gender=$_POST['sex'];
	
$age = $_POST['age']; 
 if(isset($_POST['cleanliness']))
    $clean=$_POST['cleanliness'];
  if(isset($_POST['facility']))
    $facility=$_POST['facility'];
if(isset($_POST['comfort']))
    $comfort=$_POST['comfort'];
if(isset($_POST['res']))
    $res=$_POST['res'];
if(isset($_POST['friend']))
    $friend=$_POST['friend'];
if(isset($_POST['help']))
    $help=$_POST['help'];
$suggestion = $_POST['suggestion'];
	


$sql = "insert into feedback values('".$firstname."','".$lastname."','".$address."','".$gender."','".$age."','".$clean."','".$facility."','".$comfort."','".$res."','".$friend."','".$help."','".$suggestion."')";
$mysqli->query($sql);	

}
	$mysqli->close();

?>
		
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