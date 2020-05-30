#!/bin/bash

COOKIE_FILE=.cookies.tmp~
REQUEST_FILE=.requests.tmp~
ENDPOINT=demo.res.ch/api/animals/1

printf "COOKIES:\n"
curl -c $COOKIE_FILE -s $ENDPOINT > /dev/null
tail -n +5 $COOKIE_FILE

printf "\nREQUESTS:\n"
touch $REQUEST_FILE
for i in {1..20}
do
    printf "%2d. " $i
	curl -b $COOKIE_FILE -s $ENDPOINT | cut -d '"' -f18 | tee -a $REQUEST_FILE
done

printf "\nSUMMARY:\n"
cat $REQUEST_FILE | sort | uniq -c | tr -s ' ' ' ' | cut -c2-

rm $REQUEST_FILE $COOKIE_FILE