Name: Karishma Mehta
Campus ID: 013656966
Email_Address : m.karish14@gmail.com


Configuration:
1. Windows 8 64 bit
2. PHP 5.5.12
3. MyApache 2.4.9

The Mehta_Karishma_hw2.zip folder contains
1. PHP scripts - uni_health
2. appscheduler_bookings.sql
3. appscheduler_bookings.csv
4. createdb.sql
5. readme.txt
6. folder - sendmail
  
I have provided createdb for the entire database 'uni_health_db'.
PHP codes are included in the uni_health folder

Instructions to install the database:
1. Run the createdb.sql on Mysql
2. I have provided dump for appscheduler_bookings.sql in the createdb dump file. Also i have included appscheduler_bookings.csv. If you want to check the appscheduler_bookings.csv, truncate the table appscheduler_bookings in the database and then import the appscheduler_bookings.csv.
3. After performing these steps, database will be dumped.

Instructions for PHP Script:
I have worked on WAMP Server. For this, first we need o install WAMP and configure it. Then perform the below operations:

1. Copy the folder uni_health included in the zip folder and paste in the path C:\wamp\www
2. Copy the folder sendmail and paste in the path C:\wamp
3. Start point of project is C:\wamp\www\uni_health\admin\index.html

For automatic email facitity, follow the below steps:
1. Open the Task Scheduler 
2. Click on Actions->Create Task
3. Provide name of task, set triggers to daily and time to 00:00:00
4.Click on Actions-> New-> Select Action as "Start a program"-> Specify the Program/Script as location where php is installed.For me it was C:\wamp\bin\php\php5.5.12\php.exe -> Enter '-f <location of script to be execulted>' in the Add arguments option.
5. Click on ok
6.Save

Above steps need to be done for three scripts which i have provided in the PHP scripts folder:
1. birthday_email.php
2. email_automatic.php
3. feedback_email.php

I am also sending the screenshots of the entire project.

Let me know if any concerns. You can email me on m.karish14@gmail.com




