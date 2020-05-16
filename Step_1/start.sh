#!/bin/bash

php /usr/share/nginx/html/index.php > /usr/share/nginx/html/index.html
nginx -g 'daemon off;'
