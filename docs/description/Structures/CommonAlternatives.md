Common Alternatives
In the following conditional structures, expressions were found that are common to both 'then' and 'else'. It may be interesting, though not always possible, to put them both out of the conditional, and reduce line count. 

<?php
if ($c == 5) {
    $b = strtolower($b[2]); 
    $a++;
} else {
    $b = strtolower($b[2]); 
    $b++;
}
?>

may be rewritten in : 

<?php

$b = strtolower($b[2]); 
if ($c == 5) {
    $a++;
} else {
    $b++;
}

?>

