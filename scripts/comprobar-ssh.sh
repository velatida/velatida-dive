#!/bin/bash

estado=$(systemctl is-active ssh)

if [ "$estado" = "active" ]; then
    echo "SSH está funcionando correctamente."
else
    echo "SSH no está funcionando."
fi