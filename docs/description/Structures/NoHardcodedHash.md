Hash should never be hardcoded. 

Hashes may be MD5, SHA1, SHA512, Bcrypt or any other. Such values must be easily changed, for security reasons, and the source code is not the safest place to hide it. 

<?php

    // Those strings may be sha512 hashes. 
    // it is recomemdned to check if they are static or should be put into configuration
    $init512 = array( // initial values for SHA512
        '6a09e667f3bcc908', 'bb67ae8584caa73b', '3c6ef372fe94f82b', 'a54ff53a5f1d36f1', 
    );

?>

