#!/bin/bash

cd /var/www/html/web
pm2 start -x index.js --no-daemon --watch
