When PHP offers the alternative between procedural and OOP api for the same features, it is recommended to use the OOP API. 

Often, this least to more compact code, as methods are shorter, and there is no need to bring the resource around. Lots of new extensions are directly written in OOP form too.

OOP / procedural alternatives are available for [mysqli](http://php.net/manual/en/book.mysqli.php), [tidy](http://php.net/manual/en/book.tidy.php), [cairo](http://php.net/manual/en/book.cairo.php), 'finfo <http://php.net/manual/en/book.fileinfo.php>`_, and some others.

<?php
/// OOP version
$mysqli = new mysqli(localhost, my_user, my_password, world);

/* check connection */
if ($mysqli->connect_errno) {
    printf(Connect failed: %s\n, $mysqli->connect_error);
    exit();
}

/* Create table doesn't return a resultset */
if ($mysqli->query(CREATE TEMPORARY TABLE myCity LIKE City) === TRUE) {
    printf(Table myCity successfully created.\n);
}

/* Select queries return a resultset */
if ($result = $mysqli->query(SELECT Name FROM City LIMIT 10)) {
    printf(Select returned %d rows.\n, $result->num_rows);

    /* free result set */
    $result->close();
}
?>

<?php
/// Procedural version
$link = mysqli_connect(localhost, my_user, my_password, world);

/* check connection */
if (mysqli_connect_errno()) {
    printf(Connect failed: %s\n, mysqli_connect_error());
    exit();
}

/* Create table doesn't return a resultset */
if (mysqli_query($link, CREATE TEMPORARY TABLE myCity LIKE City) === TRUE) {
    printf(Table myCity successfully created.\n);
}

?>

