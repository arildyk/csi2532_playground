# More SQL

### Situation 1

```sql
SELECT name, birthplace FROM artists
```
|name|birthplace|
|---|---|
|Caravaggio|Milan|
|Picasso|Malaga|

### Situation 2

```sql
SELECT title, price FROM artworks
WHERE year > 1600
```

|title|price|
|---|---|
|---|---|

### Situation 3

```sql
SELECT title, type FROM artworks
WHERE year = 2000 
OR artist = 'Picasso'
``` 

|title|type|
|---|---|
|---|---|

### Situation 4

```sql
SELECT name, birthplace FROM artists
WHERE EXTRACT(YEAR FROM date) >= 1880
AND EXTRACT(YEAR FROM date) <= 1930
```

### Situation 5

```sql
SELECT name, birthplace FROM artists
WHERE style IN ('Modern', 'Baroque', 'Renaissance')
```

|name|birthplace|
|---|---|
|Caravaggio|Milan|

### Situation 6

```sql
SELECT * FROM artworks
GROUP BY title
```

|title|year|type|price|artist_name|
|---|---|---|---|---|
|The Cardsharps|1594|Baroque|40000.00|Caravaggio|

### Situation 7

```sql

```

### Situation 8