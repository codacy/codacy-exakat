When a class is declared final, all of its methods are also final by default. 

There is no need to declare them individually final.

<?php

    final class foo {
        // Useless final, as the whole class is final
        final function method() { }
    }

    class bar {
        // Useful final, as the whole class is not final
        final function method() { }
    }

?>

See also [Final keyword](http://php.net/manual/en/language.oop5.final.php), and [When to declare final](https://ocramius.github.io/blog/when-to-declare-classes-final/).
