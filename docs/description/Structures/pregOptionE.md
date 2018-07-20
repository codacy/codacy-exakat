preg_replace() supported the /e option until PHP 7.0. It allowed the use of eval()'ed expression as replacement. This has been dropped in PHP 7.0, for security reasons.

preg_replace() with /e option may be replaced with preg_replace_callback() and a closure, or preg_replace_callback_array() and an array of closures.

<?php

// preg_replace with /e
$string = 'abcde';

// PHP 5.6 and older usage of /e
$replaced = preg_replace('/c/e', 'strtoupper(\$0)', $string);

// PHP 7.0 and more recent
// With one replacement
$replaced = preg_replace_callback('/c/', function ($x) { return strtoupper($x[0]); }, $string);

// With several replacements, preventing multiple calls to preg_replace_callback
$replaced = preg_replace_callback_array(array('/c/' => function ($x) { return strtoupper($x[0]); },
                                              '/[a-b]/' => function ($x) { return strtolower($x[0]); }), $string);
?>

