Queries In Loops
Avoid querying databases in a loop. 

Querying an external database in a loop usually leads to performances problems. This is also called the 'n + 1 problem'. 

This problem applies also to prepared statement : when such statement are called in a loop, they are slower than one-time large queries.

It is recommended to reduce the number of queries by making one query, and dispatching the results afterwards. This is true with SQL databases, graph queries, LDAP queries, etc. 

<?php

// Typical N = 1 problem : there will be as many queries as there are elements in $array
$ids = array(1,2,3,5,6,10);

$db = new SQLite3('mysqlitedb.db');

// all the IDS are merged into the query at once
$results = $db->query('SELECT bar FROM foo WHERE id  in ('.implode(',', $id).')');
while ($row = $results->fetchArray()) {
    var_dump($row);
}


// Typical N = 1 problem : there will be as many queries as there are elements in $array
$ids = array(1,2,3,5,6,10);

$db = new SQLite3('mysqlitedb.db');

foreach($ids as $id) {
    $results = $db->query('SELECT bar FROM foo WHERE id = '.$id);
    while ($row = $results->fetchArray()) {
        var_dump($row);
    }
}

?>

This optimisation is not always possible : for example, some SQL queries may not be prepared, like 'DROP TABLE', or 'DESC'. 'UPDATE' commands often update one row at a time, and grouping such queries may be counter-productive or unsafe. 

