Classic old style failed error management. 

<?php

// In case the connexion fails, this kills the current script
mysql_connect('localhost', $user, $pass) or die();

?>

Interrupting a script will leave the application with a blank page, will make your life miserable for testing. Just don't do that.

