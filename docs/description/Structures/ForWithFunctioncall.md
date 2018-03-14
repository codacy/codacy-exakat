For Using Functioncall
It is recommended to avoid functioncall in the for() statement. 

<?php

// Fastest way
$nb = count($array); 
for($i = 0; $i < $nb; ++$i) {
    doSomething($i);
} 

// Same as above, but slow
for($i = 0; $i < count($array); ++$i) {
    doSomething($i);
} 

// Same as above, but slow
foreach($portions as &$portion) {
    // here, array_sum() doesn't depends on the $grade. It should be out of the loop
    $portion = $portion / array_sum($portions);
} 

$total = array_sum($portion);
foreach($portion as &$portion) {
    $portion = $portion / $total;
} 

?>

This is true with any kind of functioncall that returns the same value throughout the loop. 

