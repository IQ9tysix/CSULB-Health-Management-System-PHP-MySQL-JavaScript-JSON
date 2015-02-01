<?php
$servername = "mysql8.000webhost.com";
	$username = "a6582782_health";
	$password = "Kari_1412";
	$dbname = "a6582782_health";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);


if ($mysqli->connect_error)
  {
     die("Connection failed: " . $conn->connect_error);
  }

$sql = "SELECT student_email,student_name,student_notes,appointment_d FROM appscheduler_bookings WHERE appointment_d =curdate()-1";
      
	$result = $mysqli->query($sql);

	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc())
		{
            $to= $row["student_email"];
			$subject  = 'Feedback Survey';
			$message  = 'Dear '.$row["student_name"].'.<br>This is a friendly feedback survey regarding your appointment for '.$row["student_notes"].' which was scheduled on '.$row["appointment_d"].'.<br>Please click the below link and provide your valuable suggestions.<br><p>Click Here: <a href="http://localhost:8080/uni_health/admin/feedback.php">Survey Link </a></p>';
			echo $message;
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