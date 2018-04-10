Eval() Usage
Using eval() is bad for performances (compilation time), for caches (it won't be compiled), and for security (if it includes external data).

<?php
    // Avoid using incoming data to build the eval() expression : any filtering error leads to PHP injection
    $mathExpression = $_GET['mathExpression']; 
    $mathExpression = preg_replace('#[^0-9+\-*/\(/)]#is', '', $mathExpression); // expecting 1+2
    $literalCode = '$a = '.$mathExpression.';';
    eval($literalCode);
    echo $a;

    // If eval'ed code is known at compile time, it is best to put it inline
    $literalCode = 'phpinfo();';
    eval($literalCode);

?>

Most of the time, it is possible to replace the code by some standard PHP, like variable variable for accessing a variable for which you have the name.
At worse, including a pre-generated file will be faster. 

For PHP 7.0 and later, it is important to put eval() in a try..catch expression.
