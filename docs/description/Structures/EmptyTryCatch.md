Empty Try Catch
The code does try, then catch errors but do no act upon the error. 

<?php

try { 
    doSomething();
} catch (Throwable $e) {
    // simply ignore this
}

?>

At worst, the error should be logged, so as to measure the actual usage of the catch expression.

catch( Exception $e) (PHP 5) or catch(Throwable $e) with empty catch block should be banned, as they will simply ignore any error. 