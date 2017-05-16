Ternary operators should not be nested too deep.

They are a convenient instruction to apply some condition, and avoid a if() structure. It works best when it is simple, like in a one liner. 

However, ternary operators tends to make the syntax very difficult to read when they are nested. It is then recommended to use an if() structure, and make the whole code readable.

<?php

// Simple ternary expression
echo ($a == 1 ? $b : $c) ;

// Nested ternary expressions
echo ($a === 1 ? $d === 2 ? $b : $d : $d === 3 ? $e : $c) ;
echo ($a === 1 ? $d === 2 ? $f ===4 ? $g : $h : $d : $d === 3 ? $e : $i === 5 ? $j : $k) ;

//Previous expressions, written as a if / Then expression
if ($a === 1) {
    if ($d === 2) {
        echo $b;
    } else {
        echo $d;
    }
} else {
    if ($d === 3) {
        echo $e;
    } else {
        echo $c;
    }
}

if ($a === 1) {
    if ($d === 2) {
        if ($f === 4) {
            echo $g;
        } else {
            echo $h;
        }
    } else {
        echo $d;
    }
} else {
    if ($d === 3) {
        echo $e;
    } else {
        if ($i === 5) {
            echo $j;
        } else {
            echo $k;
        }
    }
}

?>

