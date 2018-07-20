The extracted string must be of the size of the compared string.

This is also true for negative lengths.

<?php

// Possible comparison
if (substr($a, 0, 3) === 'abc') { }
if (substr($b, 4, 3) === 'abc') { }

// Always failing
if (substr($a, 0, 3) === 'ab') { }
if (substr($a, 3, -3) === 'ab') { }

// Omitted in this analysis
if (substr($a, 0, 3) !== 'ab') { }

?>
 