Don't Change Incomings
PHP hands over a lot of information using special variables like $_GET, $_POST, etc... Modifying those variables and those values inside de variables means that the original content is lost, while it will still look like raw data, and, as such, will be untrustworthy.

<?php

// filtering and keeping the incoming value. 
$_DATA'id'] = (int) $_GET['id'];

// filtering and changing the incoming value. 
$_GET['id'] = strtolower($_GET['id']);

?>

It is recommended to put the modified values in another variable, and keep the original one intact.