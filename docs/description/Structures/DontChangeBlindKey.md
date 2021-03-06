When using a foreach(), the blind variables hold a copy of the original value. It is confusing to modify them, as it seems that the original value may be changed.

When actually changing the original value, use the reference in the foreach definition to make it obvious, and save the final reassignation.

When the value has to be prepared before usage, then save the filtered value in a separate variable. This makes the clean value obvious, and preserve the original value for a future usage.

<?php

// $bar is duplicated and kept 
$foo = [1, 2, 3];
foreach($foo as $bar) {
    // $bar is updated but its original value is kept
    $nextBar = $bar + 1;
    print $bar . ' => ' . ($nextBar) . PHP_EOL;
    foobar($nextBar);
}

// $bar is updated and lost
$foo = [1, 2, 3];
foreach($foo as $bar) {
    // $bar is updated but its final value is lost
    print $bar . ' => ' . (++$bar) . PHP_EOL;
    // Now that $bar is reused, it is easy to confuse its value
    foobar($bar);
}

// $bar is updated and kept
$foo = [1, 2, 3];
foreach($foo as &$bar) {
    // $bar is updated and keept
    print $bar . ' => ' . (++$bar) . PHP_EOL;
    foobar($bar);
}

?>
