# This script comes from the base image. It starts mysqld in the background
bash /opt/startup.sh

# Create our database and users
cat setup.sql | mysql

# Create tables
cat tables/* | mysql yelp

mysqladmin shutdown
