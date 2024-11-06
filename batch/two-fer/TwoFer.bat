@echo off

set "name=%~1"

if not defined name (
    set name=you
)

echo One for %name%, one for me.
