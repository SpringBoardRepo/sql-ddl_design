-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "teams" (
    "id" SERIAL PRIMARY KEY,
    "team_name" Text   NOT NULL
);

CREATE TABLE "players" (
    "id"SERIAL PRIMARY KEY,
    "player_name" text   NOT NULL,
    "team_id" FOREIGN key
);

CREATE TABLE "goals" (
    "id" SERIAL PRIMARY KEY,
    "player_id" FOREIGN key,
    "match_id" FOREIGN key
);

CREATE TABLE "referees" (
    "id" SERIAL PRIMARY KEY,
    "name" text   NOT NULL
);

CREATE TABLE "season" (
    "id"SERIAL PRIMARY KEY,
    "start_date" int   NOT NULL,
    "end_date" int   NOT NULL
);

CREATE TABLE "matches" (
    "id"SERIAL PRIMARY KEY,
    "team_id" FOREIGN key,
    "season_id" FOREIGN key,
    "refree_id" FOREIGN key
);

CREATE TABLE "results" (
    "id" SERIAL PRIMARY KEY,
    "team_id" FOREIGN key,
    "match_id" FOREIGN key,
    "result" FOREIGN key
);

ALTER TABLE "teams" ADD CONSTRAINT "fk_teams_id" FOREIGN KEY("id")
REFERENCES "results" ("team_id");

ALTER TABLE "teams" ADD CONSTRAINT "fk_teams_team_name" FOREIGN KEY("team_name")
REFERENCES "players" ("team_id");

ALTER TABLE "players" ADD CONSTRAINT "fk_players_id" FOREIGN KEY("id")
REFERENCES "goals" ("id");

ALTER TABLE "referees" ADD CONSTRAINT "fk_referees_id" FOREIGN KEY("id")
REFERENCES "matches" ("refree_id");

ALTER TABLE "season" ADD CONSTRAINT "fk_season_id" FOREIGN KEY("id")
REFERENCES "matches" ("season_id");

ALTER TABLE "matches" ADD CONSTRAINT "fk_matches_id" FOREIGN KEY("id")
REFERENCES "goals" ("match_id");

