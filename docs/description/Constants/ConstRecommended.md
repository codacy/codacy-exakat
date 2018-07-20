The const keyword may be used to define constant, just like the define() function. 

When defining a constant, it is recommended to use 'const' when the features of the constant are not dynamical (name or value are known at compile time). 
This way, constant will be defined at compile time, and not at execution time. 

<?php
  //Do
  const A = 1;
  // Don't 
  define('A', 1);
  
?>

define() function is useful when the constant is not known at compile time, or when case sensitivity is necessary.

<?php
  // Read $a in database or config file
  define('A', $a);

  // Read $a in database or config file
  define('B', 1, true);
  echo b;
?>

