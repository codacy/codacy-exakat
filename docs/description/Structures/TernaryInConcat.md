Ternary In Concat
Ternary operator has higher priority than dot '.' for concatenation. This means that : 

<?php
  print 'B'.$b.'C'. $b > 1 ? 'D' : 'E';
?>

prints actually 'E', instead of the awaited 'B0CE'.

To be safe, always add parenthesis when using ternary operator with concatenation.
