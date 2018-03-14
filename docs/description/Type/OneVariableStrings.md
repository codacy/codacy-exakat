One Variable String
These strings only contains one variable or property or array. 

<?php

$a = 0;
$b = $a; // This is a one-variable string

// Better way to write the above
$b = (string) $a;

// Alternatives : 
$b2 = $a[1]; // This is a one-variable string
$b3 = $a->b; // This is a one-variable string
$c = d;
$d = D;
$b4 = "{$$c}";
$b5 = "{$a->foo()}";

?>

If the goal is to convert it to a string, use the type casting (string) operator : it is then clearer to understand the conversion. It is also marginally faster, though very little. 