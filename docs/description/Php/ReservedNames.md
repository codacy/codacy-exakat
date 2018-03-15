PHP Keywords As Names
PHP has a set of reserved keywords. It is recommended not to use those keywords for names structures. 

PHP does check that a number of structures, such as classes, methods, interfaces... can't be named or called using one of the keywords. However, in a few other situations, no check are enforced. Using keywords in such situation is confusing. 

<?php

// This keyword is reserved since PHP 7.2
class object {
    // _POST is used by PHP for the $_POST variable
    // This methods name is probably confusing, 
    // and may attract more than its share of attention
    function _POST() {
    
    }

}

?>

