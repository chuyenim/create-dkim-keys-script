#!/bin/bash

# MYSQL
DB_USER="root";
DB_PASSWD="matkhau";
DB_NAME="postfixadmin";

# ARGUMENTS
DOMAIN=$1
HOST=$2
VALUE=$3
NOW=$(date +"%Y-%m-%d %H:%M:%S")

# SCRIPT INSERT
mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME << EOF
INSERT INTO domain_dkims (domain, host, value, created) VALUES ("$DOMAIN", "$HOST", "$VALUE", "$NOW");
EOF
