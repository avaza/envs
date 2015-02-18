#!/usr/bin/env bash

DB=$1;
NM="_db.sql"
mysql -uhomestead -psecret -e "DROP DATABASE IF EXISTS $DB";
mysql -uhomestead -psecret -e "CREATE DATABASE $DB";
mysql -uhomestead -psecret -D$1 -e "source /code/$DB/$DB$NM";
