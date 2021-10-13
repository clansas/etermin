#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=us1.ethermine.org:4444
WALLET=0x7f7dc9aac5163c183333890058cd553a78fa4324.afdhalrz

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolamin --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolamin --algo ETHASH --pool $POOL --user $WALLET $@
done
