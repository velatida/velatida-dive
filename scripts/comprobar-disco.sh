#!/bin/bash

uso=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Uso del disco: $uso%"

if [ "$uso" -ge 80 ]; then
    echo "ADVERTENCIA: el disco está casi lleno."
else
    echo "Espacio de disco correcto."
fi