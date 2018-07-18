Always use a default statement in switch().

Switch statements hold a number of 'case' that cover all known situations, and a 'default' one which is executed when all other options are exhausted. 

<?php

// Missing default
switch($format) {
    case 'gif' : 
        processGif();
        break 1;
    
    case 'jpeg' : 
        processJpeg();
        break 1;
        
    case 'bmp' :
        throw new UnsupportedFormat($format);
}
// In case $format is not known, then switch is ignored and no processing happens, leading to preparation errors


// switch with default
switch($format) {
    case 'text' : 
        processText();
        break 1;
    
    case 'jpeg' : 
        processJpeg();
        break 1;
        
    case 'rtf' :
        throw new UnsupportedFormat($format);
        
    default :
        throw new UnknownFileFormat($format);
}
// In case $format is not known, an exception is thrown for processing 

?>

Most of the time, switch() do need a default case, so as to catch the odd situation where the 'value is not what it was expected'. This is a good place to catch unexpected values, to set a default behavior. 
