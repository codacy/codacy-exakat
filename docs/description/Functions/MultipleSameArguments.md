A method's signature is holding twice (or more) the same argument. For example, function x ($a, $a) { ... }. 

This is accepted as is by PHP 5, and the last parameter's value will be assigned to the variable. PHP 7.0 and more recent has dropped this feature, and reports a fatal error when linting the code.

<?php
  function x ($a, $a) { print $a; };
  x(1,2); => display 2
?>

However, this is not common programming practise : all arguments should be named differently.

See also [Prepare for PHP 7 error messages (part 3)](https://www.exakat.io/prepare-for-php-7-error-messages-part-3/).
