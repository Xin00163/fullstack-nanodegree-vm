-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
-- create database tournament;
create table players (
      player_id serial primary key,
      name text
);
create table matches (
      matches_id serial primary key,
      winner_id integer,
      loser_id integer,
      Foreign key (winner_id) references players(player_id),
      Foreign key (loser_id) references players(player_id)
);
