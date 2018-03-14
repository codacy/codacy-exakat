Used Once Variables
This is the list of used once variables. 

<?php

// The variables below never appear again in the code
$writtenOnce = 1;

foo($readOnce);

?>

Such variables are useless. Variables must be used at least twice : once for writing, once for reading, at least. It is recommended to remove them.

In special situations, variables may be used once : 

+ PHP predefined variables, as they are already initialized. They are omitted in this analyze.
+ Interface function's arguments, since the function has no body; They are omitted in this analyze.
+ Dynamically created variables ($$x, ${$this->y} or also using extract), as they are runtime values and can't be determined at static code time. They are reported for manual review.
+ Dynamically included files will provide in-scope extra variables.

The current analyzer count variables at the application level, and not at a method scope level. 