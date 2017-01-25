-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
-- create database tournament;
DROP DATABASE if EXISTS tournament;

CREATE DATABASE tournament;

\connect tournament

CREATE TABLE players (
      id SERIAL PRIMARY KEY,
      name TEXT
);
create table matches (
      matches_id SERIAL PRIMARY KEY,
      winner INTEGER,
      loser INTEGER,
      FOREIGN KEY (winner) REFERENCES players(id),
      FOREIGN KEY (loser) REFERENCES players(id)
);

-- create view win_total as
--       select matches.matches_id, players.id as
--       the_winner from matches, players where matches.winner = players.id
--       group by id
--       order by win_total desc;

CREATE VIEW wins AS
      SELECT players.id, count(matches.winner) AS n FROM players
      LEFT JOIN matches ON players.id =  matches.winner
      GROUP BY players.id;

CREATE VIEW count AS
      SELECT players.id, count(matches.matches_id) AS n FROM players
      LEFT JOIN matches ON players.id = matches.winner
      OR players.id = matches.loser
      GROUP BY players.id;

CREATE VIEW standings AS
      SELECT players.id, players.name, wins.n AS wins, count.n AS matches_played
      FROM players, wins, count
      WHERE players.id = wins.id and players.id = count.id
      ORDER BY wins DESC;
