Could Be Static
This global is only used in one function or method. It may be called 'static', instead of global. This allows you to keep the value between call to the function, but will not be accessible outside this function.

<?php
function foo( ) {
    static $variableIsReservedForX; // only accessible within foo( ), even between calls.
    global $variableIsGlobal;       //      accessible everywhere in the application
}
?>
