Lost References
Either avoid references, or propagate them correctly.

When assigning a referenced variable with another reference, the initial reference is lost, while the intend was to transfer the content. 

<?php

function foo(&$lostReference, &$keptReference)
{
    $c = 'c';

    // $lostReference was a reference, but now, it is another
    $lostReference =& $c;
    // $keptReference was a reference : now it contains the actual value
    $keptReference = $c;
}

$bar = 'bar';
$bar2 = 'bar';
foo($bar, $bar2); 

//displays bar c, instead of bar bar
print $bar. ' '.$bar2;

?>

Do not reassign a reference with another reference. Assign new content to the reference to change its value.