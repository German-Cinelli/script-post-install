#!/bin/bash

cd resources/
chmod +x hplip-3.20.6.run
./hplip-3.20.6.run

echo -e -n "${GREEN}Accion finalizada. Presione ENTER para continuar."
read n