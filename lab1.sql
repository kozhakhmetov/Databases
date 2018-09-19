CREATE DATABASE lab1;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  firstname varchar(50) NOT NULL ,
  lastname varchar(50) NOT NULL
);

ALTER TABLE users
  ADD COLUMN isadmin int;
ALTER TABLE users
    ALTER COLUMN isadmin DROP DEFAULT;

ALTER TABLE users
    ALTER COLUMN isadmin TYPE bool USING isadmin::boolean;

ALTER TABLE users
    ALTER COLUMN isadmin SET DATA TYPE boolean;

ALTER TABLE users ALTER COLUMN isadmin SET DEFAULT false;

ALTER TABLE users ADD CONSTRAINT use PRIMARY KEY(id);

CREATE TABLE tasks(
  id SERIAL,
  name varchar(50),
  user_id int
);

DROP TABLE tasks;

DROP DATABASE lab1;