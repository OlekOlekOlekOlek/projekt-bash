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

elif [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "--date       - wyświetla datę"
    echo "--logs [x]   - tworzy pliki logx.txt (domyślnie 100)"
    echo "--help       - pokazuje pomoc"
fi
