#!/bin/bash

COMMAND=$1
if [[ "$COMMAND" == "extract" ]];then
  COMPRESSED=$2
  tar --same-owner -I pbzip2 -xvf /in/${COMPRESSED} -C /out/
elif [[ "$COMMAND" == "remove" ]];then
    TARGET=$2
    ls /in/$TARGET
elif [[ "$COMMAND" == "bash" ]];then
  /bin/bash
fi
