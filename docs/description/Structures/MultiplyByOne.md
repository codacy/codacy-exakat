Multiplying by 1 is useless. 

If it is used to type cast a value to number, then casting (integer) or (real) is clearer. This behavior may change with PHP 7.1, which has unified the behavior of all hidden casts. 

<?php

// Still the same value than $m, but now cast to integer or real
$m = $m * 1; 

// Still the same value than $m, but now cast to integer or real
$n *= 1; 

// make typecasting clear, and merge it with the producing call.
$n = (int) $n;

?>

