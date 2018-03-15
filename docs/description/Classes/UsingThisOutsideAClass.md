Using $this Outside A Class
`$this` is a special variable, that should only be used in a class context. 

Until PHP 7.1, `$this` may be used as an argument in a function (or a method), a global, a static : while this is legit, it sounds confusing enough to avoid it.

<?php

function foo($this) {
    echo $this;
}
?>

Starting with PHP 7.1, the PHP engine check thouroughly that $this is used in an appropriate manner, and raise fatal errors in case it isn't. 

