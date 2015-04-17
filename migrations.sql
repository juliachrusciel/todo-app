psql

CREATE DATABASE todo_database;
\c todo_database;

CREATE TABLE todos(id SERIAL PRIMARY KEY, task VARCHAR(255), complete BOOLEAN, due_date TIMESTAMP);


# A Todo model should contain...
# id
# task text
# complete boolean
# due_date timestamp
