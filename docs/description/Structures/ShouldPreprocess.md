Preprocessable
The following expression are made of literals or already known values : they may be fully calculated before running PHP.

<?php

// Building an array from a string
$name = 'PHP'.' '.'7.2';

// Building an array from a string
$list = explode(',', 'a,b,c,d,e,f');

// Calculating a power
$kbytes = $bytes / pow(2, 10);

// This will never change
$name = ucfirst(strtolower('PARIS'));

?>

By doing so, this will reduce the amount of work of PHP.