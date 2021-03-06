#!/usr/bin/env bash

DB=$1;
EXT=".sql"
mysql -uhomestead -psecret -e "DROP DATABASE IF EXISTS $DB";
mysql -uhomestead -psecret -e "CREATE DATABASE $DB";
mysql -uhomestead -psecret -D$1 -e "source /code/$DB/$DB$EXT";
