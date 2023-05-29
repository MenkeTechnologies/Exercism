.legacy
| to_entries
| map({key: (.value[] | ascii_downcase), value: (.key | tonumber)})
| sort_by(.key)
| from_entries
