#!/bin/sh

echo "id, time, temp, pressure" > $2
grep ^7: $1 | sed s/:/,/g >> $2
