Relay function only hand workload to another one. 

Relay functions (or methods) are delegating the actual work to another function or method. They do not have any impact on the results, besides exposing another name for the same feature.

<?php

function myStrtolower($string) {
    return \strtolower($string);
}

?>

Relay functions are typical of transition API, where an old API have to be preserved until it is fully migrated. Then, they may be removed, so as to reduce confusion, and unclutter the API. 
