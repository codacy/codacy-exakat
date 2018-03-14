Empty Function
Function or method whose body is empty. 

Such functions or methods are rarely useful. As a bare minimum, the function should return some useful value, even if constant.

<?php

// classic empty function
function emptyFunction() {}

class bar {
    // classic empty method
    function emptyMethod() {}

    // classic empty function
    function emptyMethodWithParent() {}
}

class barbar extends bar {
    // NOT an empty method : it overwrites the parent method
    function emptyMethodWithParent() {}
}

?>

