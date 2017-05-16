Some classes elements (property, method, and constant in PHP 7.1) are missing their explicit visibility.

By default, it is public. It should at least be mentioned as public, or may be reviewed as protected or private. 

final, static and abstract are not counted as visibility. Only public, private and protected. The PHP 4 var keyword is counted as undefined.

Traits, classes and interfaces are checked. 

<?php

// Explicit visibility
class X {
    protected sconst NO_VISIBILITY_CONST = 1; // For PHP 7.2 and later

    private $noVisibilityProperty = 2; 
    
    public function Method() {}
}

// Missing visibility
class X {
    const NO_VISIBILITY_CONST = 1; // For PHP 7.2 and later

    var $noVisibilityProperty = 2; // Only with var
    
    function NoVisibilityForMethod() {}
}

?>

