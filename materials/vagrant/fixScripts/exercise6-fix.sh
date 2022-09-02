#!/bin/bash
#add fix to exercise6-fix here
rsync -v $1 $2 vagrant@server2:$3 | sed -n 's/^sent //p' | cut -d " " -f1
