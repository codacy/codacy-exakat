Those classes are marked 'abstract' and they are never extended. This way, they won't be instantiated nor used. 

Abstract classes that have only static methods are omitted here : one usage of such classes are Utilities classes, which only offer static methods. 

<?php

// Never extended class : this is useless
abstract class foo {}

// Extended class
abstract class bar {
    public function barbar() {}
}

class bar2 extends bar {}

// Utility class : omitted here
abstract class bar {
    public static function barbar() {}
}

?>

