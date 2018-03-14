Wrong fopen() Mode
Wrong file opening for fopen().

fopen() has a few modes, as described in the documentation : 'r', 'r+', for reading;  'w', 'w+' for writing; 'a', 'a+' for appending; 'x', 'x+' for modifying; 'c', 'c+' for writing and locking, 't' for text files and windows only.
An optional 'b' may be used to make the fopen() call more portable and binary safe. 

<?php

// open the file for reading, in binary mode
$fp = fopen('/tmp/php.txt', 'rb');

// New option e in PHP 7.0.16 and 7.1.2 (beware of compatibility)
$fp = fopen('/tmp/php.txt', 'rbe');

// Unknown option x
$fp = fopen('/tmp/php.txt', 'rbx');

?>

Any other values are not understood by PHP. 