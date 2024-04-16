#!/bin/bash

cat archivo.log | egrep "CRITICAL" | sort | uniq -c | sort -nr