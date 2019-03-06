#!/bin/bash
##
#  A Script that copies from the access log, can be set as a crontab to a
#  daily file by adding it at 5 58 server time before the file is wiped.
#   
#  Edit lines for you own server paths, if you store this on your shared
#  server at hostgator. I would store it as I have, in your home directory.
#
#  To have this run as a crontab type follow commands at the bottom.
#  Before you begin MAKE a folder like, mkdir cron_log
##  
clear
echo "storing this web sites page visits to a log " && sleep 5
clear 
echo "starting first copy of the http request" && sleep 3
# the copy file from the access-log 
#
# ----->EDIT EXAMPLE LINE FOR THE DOMAIN<-----
cat access-logs/EXAMPLE.com >> $(date +%Y-%m-%d-%R)http_requests.txt
echo "about to move file into cron_log" && sleep 2
# moving the file to folder cron_log
# ----->EDIT EXAMPLE WITH YOUR OWN PATH <----------
mv *http_requests.txt /HomeExample/UserExample/cron_log/
echo "the copy is complete" && sleep 3
clear
# HTTPS VERSION
# 2nd copy of the https web hits
echo "writing the ssl web page hits" && sleep 5
clear
echo "starting the https copy of requests" && sleep 3
# copying the https links from access-logs 
# --------->EDIT YOUR EXAMPLE.com-ssl_log <--------
cat access-logs/Example.com-ssl_log >> $(date +%Y-%m-%d-%R)https_requests.txt
echo "placing the file into the folder cron_log" && sleep 2
# --------->EDIT YOUR OWN PATH BELOW<----------
mv *https_requests.txt /homePATH/USERNAME/cron_log/
echo "The script has succsessfully run" && sleep 4 
clear
#
#That's it short and sweet to create a crontab follow steps below..
# 
# type:. crontab -e
# then add this line after choosing an editor 
# 58 5 * * * ./gatorlog.bash
# 
# Will run now everyday at 05:58am before the 6am server wipe. 
# Please do check the server time by running the date command 
