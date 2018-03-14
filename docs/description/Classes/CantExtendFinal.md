Can't Extend Final
It is not possible to extend final classes. 

Since PHP fails with a fatal error, this means that the extending class is probably not used in the rest of the code. Check for dead code.

<?php
    // File Foo
    final class foo {
        public final function bar() {
            // doSomething
        }
    }
?>

In a separate file : 

<?php
    // File Bar
    class bar extends foo {
    
    }
?>

