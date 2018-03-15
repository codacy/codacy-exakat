include_once() Usage
include_once() and require_once() functions should be avoided for performances reasons.

<?php

// Including a library. 
include 'lib/helpers.inc';

// Including a library, and avoiding double inclusion
include_once 'lib/helpers.inc';

?>

Try using autoload for loading classes, or use include() or require() and make it possible to include several times the same file without errors.
