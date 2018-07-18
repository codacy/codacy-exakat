preg_match() may return empty values, if the search fails. It is important to check for the existence of results before assigning them to another variable, or using it.

<?php
    preg_match('/PHP ([0-9\.]+) /', $res, $r);
    $s = $r[1];
    // $s may end up null if preg_match fails.
?>
