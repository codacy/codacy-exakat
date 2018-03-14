Redefined Default
Classes allows properties to be set with a default value. When those properties get, unconditionally, another value at constructor time, then one of the default value are useless. One of those definition should go : it is better to define properties outside the constructor.

<?php

class foo {
    public $redefined = 1;

    public function __construct( ) {
        $this->redefined = 2;
    }
}

?>
