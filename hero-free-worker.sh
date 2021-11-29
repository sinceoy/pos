#!/usr/bin/env bash
git config --global user.email heroku@gmail.com
git config --global user.name heroku
buildpack="heroku/python"
heroku login -i
app_1=$(echo app$(shuf -i 1000000000-9999999999 -n 1))
app_2=$(echo app$(shuf -i 1000000000-9999999999 -n 1))
app_3=$(echo app$(shuf -i 1000000000-9999999999 -n 1))
app_4=$(echo app$(shuf -i 1000000000-9999999999 -n 1))
app_5=$(echo app$(shuf -i 1000000000-9999999999 -n 1))
heroku create $app_1 --buildpack $buildpack &
heroku create $app_2 --buildpack $buildpack &
heroku create $app_3 --buildpack $buildpack &
heroku create $app_4 --buildpack $buildpack &
heroku create $app_5 --buildpack $buildpack &
sleep 20s
git init
heroku git:remote -a $app_1
git add Procfile requirements.txt bash.sh main.py
git commit -am "upload"
git push heroku master &
heroku git:remote -a $app_2
git add Procfile requirements.txt bash.sh main.py
git commit -am "upload"
git push heroku master &
heroku git:remote -a $app_3
git add Procfile requirements.txt bash.sh main.py
git commit -am "upload"
git push heroku master &
heroku git:remote -a $app_4
git add Procfile requirements.txt bash.sh main.py
git commit -am "upload"
git push heroku master &
heroku git:remote -a $app_5
git add Procfile requirements.txt bash.sh main.py
git commit -am "upload"
git push heroku master &
sleep 1m
heroku logout
echo "running succes"