There is no need to use the same trait, or implements the same interface  more than once.

Up to PHP 7.1 (at least), this doesn't raise any warning. Traits are only imported once, and interfaces may be implemented as many times as wanted.

<?php

class foo {
    use t3,t3,t3;
}

class bar implements i,i,i {

}

?>
