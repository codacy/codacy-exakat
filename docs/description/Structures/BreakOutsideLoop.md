Starting with PHP 7, break or continue that are outside a loop (for, foreach(), do...while(), while()) or a switch() statement won't compile anymore.

It is not possible anymore to include a piece of code inside a loop that will then break.

<?php

    // outside a loop : This won't compile
    break 1; 
    
    foreach($array as $a) {
        break 1; // Compile OK

        break 2; // This won't compile, as this break is in one loop, and not 2
    }

    foreach($array as $a) {
        foreach($array2 as $a2) {
            break 2; // OK in PHP 5 and 7
        }
    }
?>


