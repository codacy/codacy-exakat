Dont Echo Error
It is recommended to avoid displaying error messages directly to the browser.

<?php

// Inside a 'or' test
mysql_connect('localhost', $user, $pass) or die(mysql_error());

// Inside a if test
$result = pg_query( $db, $query );
if( !$result )
{
	echo Erreur SQL: . pg_error();
	exit;
}

?>

Error messages should be logged, but not displayed. 

