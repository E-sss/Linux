#!/bin/bash
set -e
service mysql start
mysql </mysql/hjl.sql
sleep 3
tail -f /dev/null