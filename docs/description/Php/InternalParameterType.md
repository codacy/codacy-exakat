The expected parameter is not of the correct type. Check PHP documentation to know which is the right format to be used.

<?php

// substr() shouldn't work on integers.
// the first argument is first converted to string, and it is 123456.
echo substr(123456, 0, 4); // display 1234

// substr() shouldn't work on boolean
// the first argument is first converted to string, and it is 1, and not t
echo substr(true, 0, 1); // displays 1

// substr() works correctly on strings.
echo substr(123456, 0, 4);

?>

