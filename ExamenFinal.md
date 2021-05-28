# CSI 2532 Examen Final

## Q1
a) 

```
π name, account_number(σ current_balance < 100 ∧ city = 'Ottawa' (customers ⋈ accounts))
```

b)

```
{t | Ǝ c ∈ customers(t[name] = c[name]) 
    ∧ Ǝ d ∈ transaction_details(t[date] = d[date] 
    ∧ t[amount] = d[amount] ∧ d[date] > '2021-03-01' ∧ d[date] < '2021-03-31')}
```

c)

```
{<b, c, a> | Ǝ i, as, ci (<i, b, as, ci> ∈ branches)
    ∧ Ǝ cid, st, cci, o, dob (<cid, c, st, cci, o, dob> ∈ customers)
    ∧ Ǝ ln, bid (<ln, cid, a, bid> ∈ loans ∧ a > 20000)
}
```

d)
```postgresql
SELECT * from accounts
LEFT JOIN branches ON accounts.branch_id = branches.branch_id
WHERE branches.city = 'Montréal'
```

## Q2
a)

Type:

| |R0|R1|R2|R3|R4|R5|R6|
|---|---|---|---|---|---|---|---|
|passenger|1|0|0|1|1|1|1|
|cargo|0|1|1|0|0|0|0|

Manufacturer:

| |R0|R1|R2|R3|R4|R5|R6|
|---|---|---|---|---|---|---|---|
|Airbus|1|0|1|0|0|0|1|
|Antonov|0|1|0|0|0|0|0|
|Boeing|0|0|0|1|1|0|0|
|Bombardier|0|0|0|0|0|1|0|

Haul:

| |R0|R1|R2|R3|R4|R5|R6|
|---|---|---|---|---|---|---|---|
|long|1|0|1|0|1|0|0|
|short|0|1|0|0|0|1|0|
|medium|0|0|0|1|0|0|1|

b)

```
type (cargo) = 0110000
manufacturer (Airbus) = 1010001

type ∧ manufacturer = 0110000 ∧ 1010001 = 0010000
```

c)

```
haul (long) = 1010100
haul (medium) = 0001001
manufacturer (LIKE A%) = 1010001 ∨ 0100000

manufacturer = 1010001 ∨ 0100000 = 1110001

haul = haul (long) ∨ haul (medium) = 1010100 ∨ 0001001 = 1011101

haul ∧ manufacturer = 1011101 ∧ 1110001 = 1010001
```

## Q3
a)

Il y aura au total 5 paniers avec cette fonction de hachage. Si on fait le modulo des nombres 0 à 6, on voit qu'on aura 0,1,2,3,4,0,1 comme résultat, ce qui fait qu'il y aura 5 paniers.

b)
```
h(321884502) = 2
h(1492040121) = 1
h(133970765) = 0
h(1449361327) = 2
h(1617292132) = 2
h(1680502534) = 4
h(1493941742) = 2
h(1468433869) = 4
h(1260515046) = 1
h(132943260) = 0
h(1337627900) = 0
h(123850591) = 1
```

Panier 0: 133970765 132943260 1337627900

Panier 1: 1492040121 1260515046 123850591

Panier 2: 321884502 1449361327 1617292132 -> 1493941742

Panier 3:

Panier 4: 1680502534 1468433869

c)

L'index créé est un index secondaire parce que l'ordre des clés n'est pas dans même ordre que celui du relation actuelle.

## Q4
A-3
B-2
C-1
D-5
E-4

## Q5
a)

```postgresql
CREATE TABLE employees (
    emp_id int,
    mentor_id int,
    name varchar(100) NOT NULL,
    hiring_date date,
    date_of_birth date CHECK ((EXTRACT(year from age(NOW(), '2003-01-01'))) >= 18),
    company_id int,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (mentor_id) REFERENCES anotherEmployees(emp_id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);
```

b)

```postgresql
ALTER TABLE employees
ADD dept_name varchar(100);
```

## Q6
a)

Ajoute 42
```
                    [45]

     [25]                             [55|71]

[7|15] [25|38|42]           [45|47] [55|60|62] [71|77|78]
```

Ajoute 51
```
                    [45]

     [25]                             [55|71]

[7|15] [25|38|42]           [45|47|51] [55|60|62] [71|77|78]
```

Ajoute 99
```
                    [45]

     [25]                             [55|71|78]

[7|15] [25|38|42]       [45|47|51] [55|60|62] [71|77] [78|99]
```

b)

Retire 25
```
                    [45]

     [25]                             [55|71|78]

[7|15] [38|42]       [45|47|51] [55|60|62] [71|77] [78|99]
```

Retire 7
```
                    [45]

     [25]                             [55|71|78]

[15|38|42]           [45|47|51] [55|60|62] [71|77] [78|99]
```

Retire 55
```
                    [45]

    [25]                      [55|71|78]

[15|38|42]       [45|47|51] [60|62] [71|77] [78|99]
```

## Q7
1)
```
F = {
    part_id, num_parts -> aircraft_model
    part_id -> production_time, unit_cost
    num_parts, unit_cost -> total_cost
}
```

2)
(unit_cost, num_parts), (part_ID, num_parts), (part_ID, total_cost), (num_parts, total_cost)

3)
R1(part_ID, production_time, unit_cost), R2(part_ID, num_parts, aircraft_model), R3(unit_cost, num_parts, total_cost)

4) 
Le relation décomposé en 3NF est la meilleur solution parce qu'il n'y a pas de dépendance partielle, ni de dépendance transitive. En plus, il n'y a pas d'anomalie de suppression, d'insertion, ou de mises à jour contrairement à ce que l'on voit sur la relation de l'analyste.
