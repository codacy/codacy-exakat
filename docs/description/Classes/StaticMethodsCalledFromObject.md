Static methods may be called without instantiating an object. As such, they never interact with the special variable '$this', as they do not depend on object existence. 

Besides this, static methods are normal methods that may be called directly from object context, to perform some utility task. 

To maintain code readability, it is recommended to call static method in a static way, rather than within object context.

<?php
    class x {
        static function y( ) {}
    }
    
    $z = new x( );
    
    $z->y( ); // Readability : no one knows it is a static call
    x::y( );  // Readability : here we know
?>

