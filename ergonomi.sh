#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ergo-eu1.nanopool.org:11111
WALLET=9fFyTgMs8EwMtpK5dMmUw928GRjqNbaBT6PB3bNMg3DyndbHqvm

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolamin --algo AUTOLYKOS2 --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolamin --algo AUTOLYKOS2 --pool $POOL --user $WALLET $@
done
