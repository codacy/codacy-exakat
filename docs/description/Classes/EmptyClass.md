Empty Classes
Classes that do no define anything at all. Classes that are directly derived from an exception are omitted.

<?php

//Empty class
class foo extends bar {}

//Not an empty class
class foo2 extends bar {
    const FOO = 2;
}

//Not an empty class, as derived from Exception
class barException extends \Exception {}

?>
