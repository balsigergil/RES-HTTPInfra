#!/bin/bash

echo "COOKIES:"
curl -c cookies.txt -s demo.res.ch/api/animals/1 > /dev/null
tail -n +5 cookies.txt

echo ""
echo "TESTS:"
for i in {1..10}
do
	curl -b cookies.txt -s demo.res.ch/api/animals/1 | cut -d '"' -f18
done

rm cookies.txt
