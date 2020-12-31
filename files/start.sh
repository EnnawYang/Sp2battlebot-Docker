#!/bin/sh
cat /Version
nohup /usr/local/bin/python /sp2battlebot/service.py >>/sp2battlebot/logs/service.log 2>&1
