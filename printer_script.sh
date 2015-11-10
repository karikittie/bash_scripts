#!/bin/bash

eb_printers="( ebtest1 ebtest2 )"
fab_printers="( fabtest1 fabtest2 )"
a=""

if [ "$a" != "eb" ] && [ "$a" != "fab" ]; then
    read -e -i "$a" -p "Print test pages into which printers? (eb/fab):  " $a
fi
echo $a
if [ "$a" == "fab" ]; then
    for printer in ${fab_printers[@]}; do
        echo $printer
    done
elif [ "$a" == "eb" ]; then
    for printer in ${eb_printers[@]}; do
        echo $printer
    done
else
    echo "Error with selection"
fi
