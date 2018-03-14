Too Many Local Variables
Too many local variables were found in the methods. When over 15 variables are found in such a method, a violation is reported.

Local variables exclude globals (imported with global) and arguments. 

When too many variables are used in a function, it is a code smells. The function is trying to do too much and needs extra space for juggling.
Beyond 15 variables, it becomes difficult to keep track of their name and usage, leading to confusion, overwritting or hijacking. 

<?php

// This function is OK : 3 vars are arguments, 3 others are globals.
function a20a3g3($a1, $a2, $a3) {
    global $a4, $a5, $a6;
    
    $a1  = 1;
    $a2  = 2;
    $a3  = 3 ;
    $a4  = 4 ;
    $a5  = 5 ;
    $a6  = 6 ;
    $a7  = 7 ;
    $a8  = 8 ;
    $a9  = 9 ;
    $a10 = 10;
    $a11  = 11;
    $a12  = 12;
    $a13  = 13 ;
    $a14  = 14 ;
    $a15  = 15 ;
    $a16  = 16 ;
    $a17  = 17 ;
    $a18  = 18 ;
    $a19  = 19 ;
    $a20 = 20;

}

// This function has too many variables
function a20() {
    
    $a1  = 1;
    $a2  = 2;
    $a3  = 3 ;
    $a4  = 4 ;
    $a5  = 5 ;
    $a6  = 6 ;
    $a7  = 7 ;
    $a8  = 8 ;
    $a9  = 9 ;
    $a10 = 10;
    $a11  = 11;
    $a12  = 12;
    $a13  = 13 ;
    $a14  = 14 ;
    $a15  = 15 ;
    $a16  = 16 ;
    $a17  = 17 ;
    $a18  = 18 ;
    $a19  = 19 ;
    $a20 = 20;

}

?>

