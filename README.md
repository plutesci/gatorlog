# gatorlog
Working Project, for users on a shared server at hostgator. Writes a log .txt file from the accesslog.
Before useing this at hostagator from a shared server you should edit the lines specific to your domain name
and your path,
you will need to follow this steps to use this as it is, or you should just edit this for your needs.
mkdir cron_log
you can find your path via ssh, on the server at port 2222 and just type in. cd ; pwd
Points to find the server path, it should be somthing like /home*/yourname/ and you could check your domain names
ls -la access-logs/ to check only if you need to shows domain names this script is for writing for both ssl and standard 
http traffic. This can be run once from the terminal or can be set up as a crontab.
