<?php

header("Content-Type: application/json");

$xmen = false;
$auth = false;

foreach (getallheaders() as $name => $val) {

    // E3
    if ($name == "X-Men") {
        $xmen = true;
        if ($val == "Wolverine") {
            echo json_encode("mutant: Wolverine, name: Logan");
        } else {
            echo json_encode("mutant: $val , name: Unknown");
        }

    // E4
    } else if ($name == "Authentication") {
        $values = explode(" ", $val);
        if ($values[0] == "Bearer" && $values[1] == "professorcharlesxavier") {
            $auth = true;
            echo "Authentication valid";
        }
        
    } else {
        echo json_encode("$name: $val");
    }
        
}

// E3
if ($xmen == false) {
    echo "Please provide an X-Men mutant and reveal their human name.";
    return http_response_code(400);
}

// E4, E5
if ($auth == false) {
    echo "error: Invalid token.";
    return http_response_code(401);
}
?>