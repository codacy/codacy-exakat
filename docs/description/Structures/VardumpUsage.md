var_dump(), print_r() or var_export() should not be left in any production code. They are debugging functions.

<?php

if ($error) {
    // Debugging usage of var_dump
    // And major security problem 
    var_dump($query);
    
    // This is OK : the $query is logged, and not displayed
    $this->log(print_r($query, true));
}

?>

They may be tolerated during development time, but must be removed so as not to have any chance to be run in production.
