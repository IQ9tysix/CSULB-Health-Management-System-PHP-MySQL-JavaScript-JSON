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

$sql = "SELECT student_email,student_name,student_notes,appointment_d FROM appscheduler_bookings WHERE appointment_d =curdate()+1";
      
	$result = $mysqli->query($sql);

	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc())
		{
            $to= $row["student_email"];
			$subject  = 'Appointment Reminder(1 day before)';
			$message  = 'Dear '.$row["student_name"].'.<br>This is a friendly reminder that your appointment for '.$row["student_notes"].' is scheduled on '.$row["appointment_d"].' which is tomorrow.<br>Please make sure to arrive 15 minutes prior to your appointment to fill the requirement forms';

		   $headers  = 'From: m.karish14@gmail.com' . "\r\n" .
            'Reply-To: m.karish14@gmail.com' . "\r\n" .
            'MIME-Version: 1.0' . "\r\n" .
            'Content-type: text/html; charset=iso-8859-1' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();
		
			mail($to, $subject, $message, $headers);
			
		}

	}

$sql_1 = "SELECT student_email,student_name,student_notes,appointment_d FROM appscheduler_bookings WHERE appointment_d =curdate()+3";
      
	$result_3 = $mysqli->query($sql_1);

	if ($result_3->num_rows > 0) 
	{
		while($row = $result_3->fetch_assoc())
		{
            $to= $row["student_email"];
			$subject  = 'Appointment Reminder(3 days before)';
			$message  = 'Dear '.$row["student_name"].'.<br>This is a friendly reminder that your appointment for '.$row["student_notes"].' is scheduled on '.$row["appointment_d"].' which is after three days.<br>Please make sure to arrive 15 minutes prior to your appointment to fill the requirement forms';

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
