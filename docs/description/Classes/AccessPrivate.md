List of calls to private properties/methods that will compile but yield some fatal error upon execution.

<?php

class a {
    private $a;
}

class b extends a {
    function c() {
        $this->a;
    }
}

?>
