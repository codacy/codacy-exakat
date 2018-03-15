Use Class Operator
Use ::class to hardcode class names, instead of strings.

This is actually faster than strings, which are parsed at executio time, while ::class is compiled, making it faster to execute. 

It is also capable to handle aliases, making the code easier to maintain. 

<?php

namespace foo\bar;

use foo\bar\X as B;

class X {}

$className = '\foo\bar\X';

$className = foo\bar\X::class;

$className = B\X;

$object = new $className;

?>

This is not possible when building the name of the class with concatenation.

This is a micro-optimization. 
