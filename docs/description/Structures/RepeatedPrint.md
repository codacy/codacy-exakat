Always merge several print or echo in one call.

It is recommended to use echo with multiple arguments, or a concatenation with print, instead of multiple calls to print echo, when outputting several blob of text.

<?php

//Write : 
  echo 'a', $b, 'c';
  print 'a' . $b . 'c';

//Don't write :  
  print 'a';
  print $b;
  print 'c';
?>  

