Phpinfo
phpinfo() is a great function to learn about the current configuration of the server.

<?php

if (DEBUG) {
    phpinfo();
}

?>

If left in the production code, it may lead to a critical leak, as any attacker gaining access to this data will know a lot about the server configuration.
It is advised to never leave that kind of instruction in a production code. 
