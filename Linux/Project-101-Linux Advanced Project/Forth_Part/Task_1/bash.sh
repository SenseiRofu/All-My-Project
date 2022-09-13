#!/bin/bash
ip=$(awk -F: '/PrivateIp/ {print $2}' info.json | head -1 | tr -d ' ",')

sed "s/ec2-private_ip/$ip/" terraform.tf | tee terraform1.tf