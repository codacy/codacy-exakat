Function Subscripting, Old Style
Since PHP 5.4, it is now possible use function results as an array, and access directly its element : 

<?php

function foo() {
    return array(1 => 'a', 'b', 'c');
}

echo foo()[1]; // displays 'a';

// Function subscripting, the old way
function foo() {
    return array(1 => 'a', 'b', 'c');
}

$x = foo();
echo $x[1]; // displays 'a';

?>

