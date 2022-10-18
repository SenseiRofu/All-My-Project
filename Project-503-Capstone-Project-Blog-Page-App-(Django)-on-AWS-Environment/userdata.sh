#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=""
git clone https://$TOKEN@github.com/SenseiRofu/All-My-Project.git
cd /home/ubuntu/All-My-Project/Project-503-Capstone-Project-Blog-Page-App-(Django)-on-AWS-Environment/
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/All-My-Project/Project-503-Capstone-Project-Blog-Page-App-(Django)-on-AWS-Environment/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
