#!/bin/bash
cat event_history.csv | grep -i ^serdar | cut -d , -f1,11 | awk -F: '/""i/ {print $2}' | tr -d ' ",]}'| tee result.txt