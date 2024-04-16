#!/bin/bash

cat archivo.log | egrep "ERROR" | sort | uniq -c | sort -nr
