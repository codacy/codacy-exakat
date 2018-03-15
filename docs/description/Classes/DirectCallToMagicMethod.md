No Direct Call To Magic Method
PHP magic methods, such as __get(), __set(), ... are supposed to be used in an object environnement, and not with direct call. 

For example, 

<?php
  print $x->__get('a'); 

//should be written 
  print $x->a;
?>

Accessing those methods in a static way is also discouraged.
