This is the list of used once variables, scope by scope. Those variables are used once in a function, a method, a class or a namespace. In any case, this means the variable is read or written, while it should be used at least twice. 

<?php

function foo() {
    // The variables below never appear twice, inside foo()
    $writtenOnce = 1;

    foo($readOnce);
    // They do appear again in other functions, or in global space. 
}

function bar() {
    $writtenOnce = 1;
    foo($readOnce);
}

?>

