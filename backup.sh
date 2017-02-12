#!/bin/bash

KEY=~/.ssh/key_name
RUSER=username
RHOST=IP_address
RPATH=/path/
folders=( "Documents/" "code/" "Projects/" )

for LPATH in "${folders[@]}"
do
  rsync -az -e "ssh -i $KEY" $LPATH $RUSER@$RHOST:${RPATH}${LPATH}
done
