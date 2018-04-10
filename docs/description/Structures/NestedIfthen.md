Nested Ifthen
Three levels of ifthen is too much. The method should be split into smaller functions.

<?php

function foo($a, $b) {
    if ($a == 1) {
        // Second level, possibly too much already
        if ($b == 2) {
            
        }
    }
}

function bar($a, $b, $c) {
    if ($a == 1) {
        // Second level. 
        if ($b == 2) {
            // Third level level. 
            if ($c == 3) {
                // Too much
            }
        }
    }
}

?>
