(.number | tostring | split("") | length as $len | map(pow(tonumber; $len)) | add) == .number
