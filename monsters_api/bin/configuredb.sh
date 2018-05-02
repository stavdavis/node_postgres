#!/bin/bash
# Note1: Use "npm run configure" to run this (see package.json script)
# Note2: Don't forget to add this file to gitignore
# The next line creates an env var that feeds the passowrd prompts
export PGPASSWORD='a'

database="monstersdb"
echo "Configuring database: $database"

dropdb -U node_user monstersdb  #will hang if no db or if db is empty
createdb -U node_user monstersdb

psql -U node_user monstersdb < ./bin/sql/monsters.sql

echo "$database configured"