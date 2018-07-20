The results of the following functions shouldn't be used directly, but checked first. 

For example, glob() returns an array, unless some error happens, in which case it returns a boolean (false). In such case, however rare it is, plugging glob() directly in a foreach() loops will yield errors.

<?php
    // Used without check : 
    foreach(glob('.') as $file) { /* do Something */ }.
    
    // Used without check : 
    $files = glob('.');
    if (!is_array($files)) {
        foreach($files as $file) { /* do Something */ }.
    }
?>
