Use pathinfo() function instead of string manipulations.

pathinfo() is more efficient and readable and string functions.

<?php

$filename = '/path/to/file.php';

// With pathinfo();
$details = pathinfo($filename);
print $details['extension'];  // also capture php

// With string functions (other solutions possible)
$ext = substr($filename, - strpos(strreverse($filename), '.')); // Capture php

?>

When the path contains UTF-8 characters, pathinfo() may strip them. There, string functions are necessary.
