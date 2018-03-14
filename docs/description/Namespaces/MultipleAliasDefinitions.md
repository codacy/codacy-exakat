Multiple Alias Definitions
Some aliases are representing differents classes across the repository. This leads to potential confusion. 

Across an application, it is recommended to use the same namespace for one alias. Failing to do this lead to the same keyword to represent different values in different files, with different behavior. Those are hard to find bugs. 

<?php

namespace A {
    use d\d; // aka D
}

// Those are usually in different files, rather than just different namespaces.

namespace B {
    use b\c as D; // also D. This could be named something else
}

?>
