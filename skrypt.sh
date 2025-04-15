#!/bin/bash


case "$1" in
  --date|-d)
    date
    ;;
  
  --logs|-l)
    count=${2:-100}
    for i in $(seq 1 $count); do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Skrypt: $0" >> $filename
        echo "Data: $(date)" >> $filename
    done
    ;;

  --help|-h)
    echo "Dostępne opcje:"
    echo "--date, -d        - wyświetla datę"
    echo "--logs [n], -l [n] - tworzy pliki logX.txt (domyślnie 100)"
    echo "--error [n], -e [n] - tworzy errorX/errorX.txt (domyślnie 100)"
    echo "--init            - klonuje repo i dodaje do PATH"
    echo "--help, -h        - pokazuje pomoc"
    ;;
  
  *)
    echo "Nieznana flaga. Użyj --help"
    ;;
  --init)
    git clone https://github.com/OlekOlekOlekOlek/projekt-bash.git
    echo "export PATH=\$PATH:$(pwd)/projekt-bash" >> ~/.bashrc
    echo "Dodano projekt-bash do PATH (wymagane ponowne uruchomienie terminala)"
    ;;
esac