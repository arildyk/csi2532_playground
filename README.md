# Lab 7

## E1
```sql
INSERT INTO athletes
    (athlete_id, name, email, date_of_birth, nationality, gender)
VALUES
    --Men
    (1,'Lionel Messi', 'lmessi@gmail.com', '1987-06-02', 'Argentina', 'M'),
    (2,'Cristiano Ronaldo', 'cronaldo@gmail.com', '1985-02-05', 'Portugal', 'M'),
    (3,'Neymar da Silva Santos', 'nsantos@gmail.com', '1992-02-05', 'Brazil', 'M'),
    (4,'Kylian Mbappé', 'kmbappe@gmail.com', '1998-02-20', 'France', 'M'),
    (5,'Pelé', 'pele@gmail.com', '1940-06-02', 'Brazil', 'M'),
    (6,'Diego Maradona', 'dmaradona@gmail.com', '1960-10-30', 'Argentina', 'M'),
    (7,'Luis Suárez', 'lsuarez@gmail.com', '1987-01-24', 'Uruguay', 'M'),
    (8,'Mohamed Salah', 'msalah@gmail.com', '1992-06-15', 'Egypt', 'M'),
    (9,'Paul Pogba', 'ppogba@gmail.com', '1993-03-15', 'France', 'M'),
    (10,'Sadio Mané', 'smane@gmail.com', '1992-04-10', 'Sénégal', 'M'),
    (11,'Pascal Siakam', 'psiakam@gmail.com', '1994-04-02', 'Cameroon', 'M'),
    (12,'LeBron James', 'kingjames@gmail.com', '1984-12-30', 'United States', 'M'),
    (13,'Kobe Bryant', 'mamba@gmail.com', '1978-01-26', 'United States', 'M'),
    (14,'Stephen Curry', 'scurry@gmail.com', '1988-03-14', 'United States', 'M'),
    (15,'Hakeem Olajuwon', 'holajuwon@gmail.com', '1963-01-21', 'Nigeria', 'M'),
    (16,'Giannis Antetokounmpo', 'gante@gmail.com', '1994-12-06', 'Greece', 'M'),
    (17,'Luka Dončić', 'ldoncic@gmail.com', '1999-02-28', 'Slovenia', 'M'),
    (18,'Nikola Jokić', 'njokic@gmail.com', '1995-02-19', 'Serbia', 'M'),
    (19,'Joel Embiid', 'jembiid@gmail.com', '1994-03-16', 'Cameroon', 'M'),
    (20,'Dikembe Mutombo', 'dmutombo@gmail.com', '1966-06-25', 'Democratic Republic of the Congo', 'M'),

    --Women
    (21, 'Megan Rapinoe', 'mrapinoe@gmail.com', '1985-07-05', 'United States', 'F'),
    (22, 'Marta Vieira da Silva', 'msilva@gmail.com', '1986-02-19', 'Brazil', 'F'),
    (23, 'Kadeisha Buchanan', 'kbuchanan@gmail.com', '1995-11-05', 'Canada', 'F'),
    (24, 'Sophie Schmidt', 'sschmidt@gmail.com', '1988-06-28', 'Canada', 'F'),
    (25, 'Cristiane Rozeira', 'crozeira@gmail.com', '1985-05-15', 'Brazil', 'F'),
    (26, 'Sun Wen', 'swen@gmail.com', '1973-04-06', 'China', 'F'),
    (27, 'Ada Hegerberg', 'ahegerberg@gmail.com', '1995-07-10', 'Norway', 'F'),
    (28, 'Nichelle Prince', 'nprince@gmail.com', '1995-02-26', 'Canada', 'F'),
    (29, 'Amandine Henry', 'ahenry@gmail.com', '1989-09-28', 'France', 'F'),
    (30, 'Homare Sawa', 'msawa@gmail.com', '1978-09-06', 'Japan', 'F'),
    (31, 'Diana Taurasi', 'dtaurasi@gmail.com', '1982-06-11', 'United States', 'F'),
    (32, 'Candace Parker', 'cparker@gmail.com', '1986-04-19', 'United States', 'F'),
    (33, 'Sue Bird', 'sbird@gmail.com', '1980-10-16', 'United States', 'F'),
    (34, 'Nneka Ogwumike', 'nogwumike@gmail.com', '1990-07-02', 'United States', 'F'),
    (35, 'Maya Moore', 'mmoore@gmail.com', '1989-06-11', 'United States', 'F'),
    (36, 'Breanna Stewart', 'bstewart@gmail.com', '1994-08-26', 'United States', 'F'),
    (37, 'Lisa Leslie', 'lleslie@gmail.com', '1972-07-07', 'United States', 'F'),
    (38, 'Arike Ogunbowale', 'aogunbowale@gmail.com', '1997-03-02', 'United States', 'F'),
    (39, 'Chiney Ogwumike', 'cogwumike@gmail.com', '1992-03-21', 'United States', 'F'),
    (40, 'Becky Hammon', 'bhammon@gmail.com', '1977-03-11', 'United States', 'F');
```
## E2
```sql
INSERT INTO competitions
    (competition_id, name, venue, competition_date, competition_end_date)
VALUES
    (1, '3 Point Contest', 'Ottawa', '2021-02-23 19:00:00', '2021-02-23 20:00:00'),
    (2, 'Penalty Kicks', 'Brampton', '2021-02-23 18:00:00', '2021-02-23 19:00:00'),
    (3, 'All-Star Game (Soccer)', 'Montréal', '2021-02-24 19:00:00', '2021-02-24 20:00:00'),
    (4, 'All-Star Game (Basketball)', 'Montréal', '2021-02-23 19:00:00', '2021-02-23 20:00:00'),
    (5, 'Dunk Contest', 'Toronto', '2021-02-23 20:00:00', '2021-02-23 21:00:00');
```
## E3

|#|Main Score|Main Tie-Break|Secondary Score|Secondary Tie-Break|
|---|---|---|---|---|
|1|Count DESC|NULL|NULL|NULL|
|2|Count DESC|Time ASC|NULL|NULL|
|3|Count DESC|Time DESC|NULL|NULL|
|4|Count DESC|Count DESC|NULL|NULL|
|5|Count DESC|Count ASC|NULL|NULL|
|6|Count ASC|NULL|NULL|NULL|
|7|Count ASC|Time ASC|NULL|NULL|
|8|Count ASC|Time DESC|NULL|NULL|
|9|Count ASC|Count DESC|NULL|NULL|
|10|Count ASC|Count ASC|NULL|NULL|
|11|Time DESC|NULL|NULL|NULL|
|12|Time DESC|Time ASC|NULL|NULL|
|13|Time DESC|Time DESC|NULL|NULL|
|14|Time DESC|Count DESC|NULL|NULL|
|15|Time DESC|Count ASC|NULL|NULL|
|16|Time ASC|NULL|NULL|NULL|
|17|Time ASC|Time ASC|NULL|NULL|
|18|Time ASC|Time DESC|NULL|NULL|
|19|Time ASC|Count DESC|NULL|NULL|
|20|Time ASC|Count ASC|NULL|NULL|