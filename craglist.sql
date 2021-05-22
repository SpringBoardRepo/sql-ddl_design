-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "User" (
    "id"  SERIAL PRIMARY KEY,
    "Name" text   NOT NULL,
    "password" VARCHAR(10)   NOT NULL,
    "prefered_location" Text
);

CREATE TABLE "Region" (
    "id"  SERIAL PRIMARY KEY,
    "City" Text 
);

CREATE TABLE "Post" (
    "id" SERIAL PRIMARY KEY,
    "title" Text   NOT NULL,
    "user_id"  Foreign key,
    "cat_id"   Foreign key,
    "region_id" Foreign key
);

CREATE TABLE "categories" (
    "id" SERIAL PRIMARY KEY,
    "name" text NOT NULL
);


