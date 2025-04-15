#!/bin/bash

if ["$1" == "--date" ]; then
	date
fi

elif [ "$1" == "--logs" ]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Skrypt: $0" >> $filename
        echo "Data: $(date)" >> $filename
    done

