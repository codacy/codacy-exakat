No Hardcoded Path
It is not recommended to have literals when accessing files. 

Either use __FILE__ and __DIR__ to make the path relative to the current file; use a DOC_ROOT as a configuration constant that will allow you to move your script later or rely on functions likes sys_get_temp_dir(), to reach special folders.

<?php

    // This depends on the current executed script
    file_get_contents('token.txt');

    // Exotic protocols are ignored
    file_get_contents('jackalope://file.txt');

    // Some protocols are ignored : http, https, ftp, ssh2, php (with memory)
    file_get_contents('http://www.php.net/');
    file_get_contents('php://memory/');
    
    // glob() with special chars * and ? are not reported
    glob('./*/foo/bar?.txt');
    // glob() without special chars * and ? are reported
    glob('/foo/bar/');
    
?>

