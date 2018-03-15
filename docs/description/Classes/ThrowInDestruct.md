Throw In Destruct
According to the manual, 'Attempting to throw an exception from a destructor (called in the time of script termination) causes a fatal error.'

The destructor may be called during the lifespan of the script, but it is not certain. If the exception is thrown later, the script may end up with a fatal error. 
Thus, it is recommended to avoid throwing exceptions within the __destruct method of a class.

<?php

// No exception thrown
class Bar { 
    function __construct() {
        throw new Exception('__construct');
    }

    function __destruct() {
        $this->cleanObject();
    }
}

// Potential crash
class Foo { 
    function __destruct() {
        throw new Exception('__destruct');
    }
}

?>

