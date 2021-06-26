proc custom_error_message {message} {
    error "$message"
}

proc map_error {message} {
    set errormap {
      "divide by zero" "division by zero"
      "*no such file or directory" "file does not exist" 
      "invalid command name*" "proc does not exist"
    }

    foreach {k v} $errormap {
        if { [string match $k $message]} {
            return $v
        }
    }

    return $message
}


proc handle_error {script} {
    if { [catch $script err] } {
        return [map_error $err]
    } else {
        return "success"

    }
}
