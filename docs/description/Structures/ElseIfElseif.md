Always use elseif instead of else and if. 

"The keyword elseif SHOULD be used instead of else if so that all control keywords look like single words". Quoted from the PHP-FIG documentation

<?php

// Using elseif 
if ($a == 1) { doSomething(); }
elseif ($a == 2) { doSomethingElseIf(); }
else { doSomethingElse(); }

// Using else if 
if ($a == 1) { doSomething(); }
else if ($a == 2) { doSomethingElseIf(); }
else { doSomethingElse(); }

// Using else if, no {}
if ($a == 1)  doSomething(); 
else if ($a == 2) doSomethingElseIf(); 
else  doSomethingElse(); 

?>
.