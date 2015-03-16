#!/bin/bash
echo '---------------------------------------------'
echo 'All files and subdirectories'
echo 'in this directory will be DESTROYED'
echo '--------------------------!!!!!!!!!----------'
echo 'Do you want to proceed [y/n]? ' | tr -d '\012' ; read
if [ "_$REPLY" = "_y" ]; then
    rm XXX
else
    echo '(cancelled)'
fi
