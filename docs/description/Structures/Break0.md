Break With 0
Cannot break 0, as this makes no sense. Break 1 is the minimum, and is the default value.

<?php
    // Can't break 0. Must be 1 or more, depending on the level of nesting.
    for($i = 0; $i < 10; $i++) {
        break 0;
    }

    for($i = 0; $i < 10; $i++) {
        for($j = 0; $j < 10; $j++) {
            break 2;
        }
    }

?>

