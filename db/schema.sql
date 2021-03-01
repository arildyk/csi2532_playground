CREATE TABLE competition (
    id int,
    name varchar(30),
    venue varchar(70),
    athlete_id int,
    start_date varchar(30),
    PRIMARY KEY (id)
);

INSERT INTO competition (id, name, venue, athlete_id, start_date)
VALUES (232311, 'Soccer', 'Alfredo di Stéfano Stadium', 95421, '9 avril 2021'),
(354356, 'Soccer', 'Old Trafford Stadium', 64764, '10 juin 2021'),
(209143, 'Soccer', 'Camp Nou Stadium', 23653, '2 mars 2021'),
(867587, 'Soccer', 'Emirates Stadium', 57295, '11 septembre 2021'),
(658956, 'Soccer', 'Goodison Park Stadium',	19007, '4 octobre 2021');