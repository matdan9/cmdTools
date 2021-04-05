#!/bin/bash
echo "going: https://www.google.com/search?client=firefox-b-d&q=$*"
old="$IFS"
IFS="+"
exec firefox --new-tab "https://www.google.com/search?client=firefox-b-d&q=$*"
IFS=$old
