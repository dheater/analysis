#!/bin/sh

#grep \$GP log.txt | cut -d":" -f5
grep \$GP $1 | cut -d":" -f5
