#!/bin/bash
##
## Copyright (c) MoonOriginICT 2019. All Rights Reserved
##

status=$(wget "http://apilink/api/server/login.php?user=$username&password=$password&key=apikey" -q -O -)
[ "$status" != '' ] && [ "$status" = "1" ] && exit 0 || exit 1
