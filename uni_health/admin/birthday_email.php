<?php
$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);


$todaysmonth=date("m",time()); 
$todaysday=date("d",time()); 

if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }

$sql = "SELECT student_email,student_name FROM appscheduler_bookings WHERE student_dob like '%-".$todaysmonth."-".$todaysday."'";
      
	$result = $mysqli->query($sql);

	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc())
		{
            $to= $row["student_email"];
			$subject  = 'Wish you Happy Birthday';
			$message  = 'Dear '.$row["student_name"].'<br> Many many happy returns of the day. Wish you happy birthday ';

		$headers  = 'From: m.karish14@gmail.com' . "\r\n" .
            'Reply-To: m.karish14@gmail.com' . "\r\n" .
            'MIME-Version: 1.0' . "\r\n" .
            'Content-type: text/html; charset=iso-8859-1' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();
			mail($to, $subject, $message, $headers);
			
		}

	}
    $mysqli->close();

?>
