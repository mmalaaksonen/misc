#!/bin/bash
curl -o installServer.sh https://raw.githubusercontent.com/mmalaaksonen/misc/master/installServer.sh
xterm -e ./installServer.sh
rm installServerInit.sh
