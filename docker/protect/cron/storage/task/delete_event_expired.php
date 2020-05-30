<?php

// credentials
$db_host = '10.10.0.2';
$db_user = '';
$db_pass = '';
$db_name = '';

// root
$root_dir = '/var/lib/camera';

// connection
$mysqli = new \mysqli($db_host, $db_user, $db_pass, $db_name);

// select expired events
// event sql
$event_sql = "
    SELECT event.* 
    FROM event 
    WHERE event.lock = 0
        AND event.time_insert < DATE_SUB(NOW(), INTERVAL 10 DAY)";

// event query/result
$event_result = $mysqli->query($event_sql);

// event array
$event_array = [];

// file array
$file_array = [];

// expired events found
if ($event_result->num_rows > 0) {
    // loop through expired results
    while ($event = $event_result->fetch_object()) {
        // store expired event
        $event_array []= $event;
        // store expired event video file path
        $file_array []= implode('/', [$root_dir, $event->id . '.' . 'mp4',]);
        // store expired event image file path
        $file_array []= implode('/', [$root_dir, $event->id . '.' . 'jpg',]);
    }
}

// delete expired event file
@array_map('unlink', $file_array);

// delete expired events
// build event id list
$event_list = implode(',', array_map('intval', array_column($event_array, 'id')));

// event sql
$event_sql = "
    DELETE event
    FROM event
    WHERE event.id IN (" . $event_list . ")";

// event result
$event_result = $mysqli->query($event_sql);
