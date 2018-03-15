Hardcoded Passwords
Hardcoded passwords in the code. 

Hardcoding passwords is a bad idea. Not only it make the code difficult to change, but it is an information leak. It is better to hide this kind of information out of the code.

<?php

$ftp_server = '300.1.2.3';   // 
$conn_id = ftp_connect($ftp_server); 

// login with username and password
$login_result = ftp_login($conn_id, 'login', 'password'); 

?>
