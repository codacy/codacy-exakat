Throws An Assignement
It is possible to throw an exception, and, in the same time, assign this exception to a variable.

However, $e will never be used, as the exception is thrown, and any following code is not executed. 

<?php

    // $e is useful, though not by much
    $e = new() Exception();
    throw $e;

    // $e is useless
    throw $e = new() Exception();

?>

The assignement should be removed.
