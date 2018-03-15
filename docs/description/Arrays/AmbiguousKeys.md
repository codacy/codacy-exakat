Ambiguous Array Index
Those indexes are defined with different types, in the same array. 

Array indices only accept integers and strings, so any other type of literal is reported. 

<?php

$x = [ 1  => 1,
      '1' => 2,
      1.0 => 3,
      true => 4];
// $x only contains one element : 1 => 4

// Still wrong, immediate typecast to 1
$x[1.0]  = 5; 
$x[true] = 6; 

?>

They are indeed distinct, but may lead to confusion. 
