#!/bin/bash
cat event_history.csv | grep -i ^serdar | cut -d , -f1,10 | awk -F: '/""i/ {print $2}' | tr -d ' ",]}'| tee result.txt