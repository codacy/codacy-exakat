Those instructions are useless, or contains useless parts. 

For example, running '&lt;?php 1 + 1; ?&gt;' does nothing : the addition is actually performed, but not used : not displayed, not stored, not set. Just plain lost. 

Here the useless instructions that are spotted : 

<?php

// This is a typo, that PHP turns into a constant, then a string. 
conitnue;

// Empty string in a concatenation
$a = 'abc' . '';

// Returning expression, whose result is not used (additions, comparisons, properties, closures, new without =, ...)
1 + 2;

// Returning post-incrementation
function foo($a) {
    return $a++;
}

// array_replace() with only one argument
$replaced = array_replace($array);
// array_replace() is OK with ... 
$replaced = array_replace(...$array);

// @ operator on source array, in foreach, or when assigning literals
$array = @array(1,2,3);

// Multiple comparisons in a for loop : only the last is actually used.
for($i = 0; $j = 0; $j < 10, $i < 20; ++$j, ++$i) {
    print $i.' '.$j.PHP_EOL;
}

?>

