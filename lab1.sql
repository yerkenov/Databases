{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red26\green26\blue26;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c13333\c13333\c13333;\cssrgb\c100000\c100000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl220\partightenfactor0

\f0\fs20 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE DATABASE lab1;\
\
CREATE TABLE users(\
\'a0 id SERIAL PRIMARY KEY,\
\'a0 firstname VARCHAR(50),\
\'a0 lastname VARCHAR(50)\
);\
\
SELECT * FROM users;\
\
ALTER TABLE users ADD COLUMN "isadmin" INT;\
\
ALTER TABLE users\
\'a0 \'a0 ALTER COLUMN isadmin TYPE boolean USING isadmin::boolean;\
\
ALTER TABLE users\
\'a0 \'a0 ALTER COLUMN isadmin SET DEFAULT FALSE;\
\
\
ALTER TABLE users ADD CONSTRAINT CON_id UNIQUE(id);\
\
CREATE TABLE tasks(\
\'a0 id SERIAL PRIMARY KEY ,\
\'a0 name VARCHAR(50),\
\'a0 user_id INT\
);\
\
DROP TABLE tasks;\
DROP DATABASE lab1;}