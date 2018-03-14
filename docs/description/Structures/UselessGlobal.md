Useless Global
Global are useless in two cases. First, on super-globals, which are always globals, like $_GET. Secondly, on variables that are not used.

<?php

// $_POST is already a global : it is in fact a global everywhere
global $_POST;

// $unused is useless
function foo() {
    global $used, $unused;
    
    ++$used;
}

?>

Also, PHP has superglobals, a special team of variables that are always available, whatever the context. 
They are : $GLOBALS, $_SERVER, $_GET, $_POST, $_FILES, $_COOKIE, $_SESSION, $_REQUEST and $_ENV. 
