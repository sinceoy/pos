#!/usr/bin/env bash
#rerun tiap 24jam
buildpack="heroku/python"
command="sc_minining_ngulik_sndri"
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
heroku run "$command" -a $app_1 --size=free &
heroku run "$command" -a $app_2 --size=free &
heroku run "$command" -a $app_3 --size=free &
heroku run "$command" -a $app_4 --size=free &
heroku run "$command" -a $app_5 --size=free &
sleep 5s
heroku logout
echo "running succes"