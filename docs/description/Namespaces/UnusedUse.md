Unused use statements. They may be removed, as they clutter the code and slows PHP by forcing it to search in this list for nothing.

<?php

use A as B; // Used in a new call.
use Unused; // Never used. May be removed

$a = new B();

?>

