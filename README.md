# Devoir #1

## Partie A: Modèles ER

### A1: Relations, cardinalité, et participation

a) 

![aA1](images/aA1.PNG)

b) 

![bA1](images/bA1.PNG)

c)

![cA1](images/cA1.PNG)

### A2: Conception du système

![A2](images/A2.PNG)

### A3: Algèbre relationnelle
a) 

![aA3](images/aA3.PNG)

b)

![bA3](images/bA3.PNG)

## Partie B: SQL

### B1: Lecture de requêtes SQL
a)

|name|experience|
|---|---|
|andrew|3|
|august|1|
|hayden|2|

b)

|name|released_date|
|---|---|
|MS Word|2011-01-20|
|Sketch|2016-06-15|

c)

La requête ne s'exécute pas parce qu'il manque "users_2019.id" dans la déclaration `GROUP BY`.

```sql
WITH users_2019 (id, name) AS
  (SELECT *
   FROM users
   WHERE join_date BETWEEN '2019-01-01' AND '2019-12-31')
SELECT id, 
       name,
       count(licenses.access_code) AS num 
FROM users_2019
LEFT JOIN licenses ON licenses.user_id = id
GROUP BY id, name
ORDER BY num DESC;
```

### B2: Ecriture de requêtes SQL
a)
b)
c)
d)

### B3: Mise à jour le schéma SQL
a)
b)
c)
d)
