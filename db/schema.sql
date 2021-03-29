CREATE TABLE athletes (
    athlete_id integer,
    name varchar(20),
    email varchar(50),
    date_of_birth date,
    nationality varchar(50),
    gender varchar(1)
);

CREATE TABLE competitions (
    competition_id integer,
    name varchar(30),
    venue varchar(50),
    competition_date date,
    competition_end_date date,
);