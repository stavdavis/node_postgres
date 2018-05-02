#!/bin/bash
# Note1: Use "npm run configure" to run this (see package.json script)
# Note2: Don't forget to add this file to gitignore
# The next line creates an env var that feeds the passowrd prompts

export PGPASSWORD='a' #Not using this right now. See: https://www.udemy.com/node-postgresql/learn/v4/t/lecture/8405508?start=0

database="monstersdb"
echo "Configuring database: $database"

sudo -u node_user dropdb monstersdb #this works on ubuntu
#dropdb -U node_user monstersdb  #Mac version

sudo -u node_user createdb monstersdb #this works on ubuntu
#createdb -U node_user monstersdb #Mac version

sudo -u node_user psql monstersdb < ./bin/sql/monsters.sql
#psql -U node_user monstersdb < ./bin/sql/monsters.sql #Mac version

echo "$database configured"