Multiple Class Declarations
It is possible to declare several times the same class in the code. PHP will not mention it until execution time, since declarations may be conditional. 

<?php

$a = 1;

// Conditional declaration
if ($a == 1) {
    class foo {
        function method() { echo 'class 1';}
    }
} else {
    class foo {
        function method() { echo 'class 2';}
    }
}

(new foo())->method();
?>

It is recommended to avoid declaring several times the same class in the code. The best practice is to separate them with namespaces, they are for here for that purpose. In case those two classes are to be used interchangeably, the best is to use an abstract class or an interface.