Those traits are undefined. 

When the using class or trait is instantiated, PHP emits a a fatal error.

<?php

use Composer/Component/someTrait as externalTrait;

trait t {
    function foo() {}
}

// This class uses trait that are all known
class hasOnlyDefinedTrait {
    use t, externalTrait;
}

// This class uses trait that are unknown
class hasUndefinedTrait {
    use unknownTrait, t, externalTrait;
}
?>

