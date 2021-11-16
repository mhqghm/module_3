#!/usr/bin/env bash
cnt=0
until [[ "$?" -ne 0 ]];
do
cnt=$((cnt+1))
echo "$cnt"
./to_test.sh &> out.txt
done
echo "found error after $cnt runs"
cat out.txt
