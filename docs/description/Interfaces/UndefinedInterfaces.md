Typehint or instanceof that are relying on undefined interfaces (or classes) : they will always return false. Any condition based upon them are dead code.

<?php

class var implements undefinedInterface {
    // If undefinedInterface is undefined, this code lints but doesn't run
}

if ($o instanceof undefinedInterface) {
    // This is silent dead code
}

function foo(undefinedInterface $a) {
    // This is dead code
    // it will probably be discovered at execution
}

?>

