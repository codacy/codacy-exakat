No Hardcoded Ip
Do not leave hard coded IP in your code.

It is recommended to move such configuration in external files or databases, for each update. 
This may also come handy when testing. 

<?php

// This IPv4 is hardcoded. 
$ip = '183.207.224.50';
// This IPv6 is hardcoded. 
$ip = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';

// This looks like an IP
$thisIsNotAnIP = '213.187.99.50';
$thisIsNotAnIP = '2133:1387:9393:5330';

?>

127.0.0.1, ::1 and ::0 are omitted, and not considered as a violation.

