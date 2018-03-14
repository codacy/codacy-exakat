Illegal Name For Method
PHP has reserved usage of methods starting with __ for magic methods. It is recommended to avoid using this prefix, to prevent confusions.

<?php

class foo{
    // Constructor
    function __construct() {}

    // Constructor's typo
    function __constructor() {}

    // Illegal function name, even as private
    private function __bar() {}
}

?>
