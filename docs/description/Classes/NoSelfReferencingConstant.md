No Self Referencing Constant
It is not possible to use 'self' when defining a constant in a class. It will yield a fatal error at runtime. 

<?php
    class a { 
        const C1 = 1; 
        const C2 = self::C1; 
        const C3 = a::C3; 
    }
?>

The code needs to reference the full class's name to do so, without using the current class's name. 

<?php
    class a { 
        const C1 = 1; 
        const C2 = a::C1; 
    }
?>

