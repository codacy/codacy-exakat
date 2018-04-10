Multiple Index Definition
Indexes that are defined multiple times in the same array. 

<?php
    // Multiple identical keys
    $x = array(1 => 2, 
               2 => 3,  
               1 => 3);

    // Multiple identical keys (sneaky version)
    $x = array(1 => 2, 
               1.1 => 3,  
               true => 4);

    // Multiple identical keys (automated version)
    $x = array(1 => 2, 
               3,        // This will be index 2
               2 => 4);  // this index is overwritten
?>

They are indeed overwriting each other. This is most probably a typo.
