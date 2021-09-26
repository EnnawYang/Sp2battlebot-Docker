#!/bin/sh
cat /Version
echo > /sp2battlebot/logs/service.py.log
/sp2battlebot/sp2battlebot start
tail -f /sp2battlebot/logs/service.py.log
