Until PHP 7.0, some classes instantiation could yield null, instead of throwing an exception. 

After issuing a 'new' with those classes, it was important to check if the returned object were null or not. No exception were thrown.

<?php

// Example extracted from the wiki below
$mf = new MessageFormatter('en_US', '{this was made intentionally incorrect}');
if ($mf === null) {
    echo 'Surprise!';
}

?>

This inconsistency has been cleaned in PHP 7 : see See [Internal Constructor Behavior](https://wiki.php.net/rfc/internal_constructor_behaviour)

See also [PHP RFC: Constructor behaviour of internal classes](https://wiki.php.net/rfc/internal_constructor_behaviour).
