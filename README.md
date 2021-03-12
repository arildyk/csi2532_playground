# More SQL

### Situation 1

```sql
SELECT name, birthplace FROM artists
```
|name|birthplace|
|---|---|
|Caravaggio|Milan|
|Picasso|Malaga|
|Leonardo|Florence|
|Michelangelo|Arezzo|
|Josefa|Seville|
|Hans Hoffman|Weisenburg|
|John|San Francisco|

### Situation 2

```sql
SELECT title, price FROM artworks
WHERE year > 1600
```

|title|price|
|---|---|
|Three Musicians|11000.00|

### Situation 3

```sql
SELECT title, type FROM artworks
WHERE year = 2000 
OR artist_name = 'Picasso'
``` 

|title|type|
|---|---|
|Three Musicians|Modern|

### Situation 4

```sql
SELECT name, birthplace FROM artists
WHERE EXTRACT(YEAR FROM dateofbirth) >= 1880
AND EXTRACT(YEAR FROM dateofbirth) <= 1930
```

|name|birthplace|
|---|---|
|Picasso|Malaga|
|John|San Francisco|

### Situation 5

```sql
SELECT name, birthplace FROM artists
WHERE style IN ('Modern', 'Baroque', 'Renaissance')
```

|name|birthplace|
|---|---|
|Caravaggio|Milan|
|Leonardo|Florence|
|Michelangelo|Arezzo|
|Josefa|Seville|
|Hans Hoffman|Weisenburg|
|John|San Francisco|

### Situation 6

```sql
SELECT * FROM artworks
GROUP BY title
```

|title|year|type|price|artist_name|
|---|---|---|---|---|
|The Cardsharps|1594|Baroque|40000.00|Caravaggio|
|Three Musicians|1921|Modern|11000.00|Picasso|

### Situation 7

```sql
SELECT id, name FROM customers
INNER JOIN likeartists ON id=likeartists.customer_id
WHERE artist_name IN ('Picasso')
```

|customer_id|artist_name|
|---|---|
|4|Picasso|
|5|Picasso|

### Situation 8

```sql
SELECT c.id, c.name FROM customers c
INNER JOIN likeartists l ON l.customer_id = c.id
INNER JOIN artists a ON a.name = l.artist_name
INNER JOIN artworks ar ON ar.artist_name = a.name
WHERE style IN ('Renaissance') AND price IN (30000)
```

|id|name|
|---|---|
|---|---|