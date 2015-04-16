#!/bin/bash

varTop=`top -bn1 | grep "KiB Mem"`

total=`echo $varTop | awk -F' '   '{print $3}'`
used=`echo $varTop | awk -F' '   '{print $5}'`
prct="scale=2; $total/0.6" | bc

echo $prct

