#!/bin/bash

echo "COOKIES:"
curl -c cookies.txt -s demo.res.ch > /dev/null
tail -n +5 cookies.txt

echo ""
echo "TESTS:"
for i in {1..10}
do
	curl -b cookies.txt -s demo.res.ch | grep "Static host" | cut -d ':' -f2 | cut -c2-
done

rm cookies.txt
