# Devoir #2

## Q1: Normalisation

a) AB, BC, BD
b) C et D ne sont pas des super clés
c)

## Q2: Dépendances fonctionnelles

a)
``` 
F = {
    NIN, contractNo -> hoursPerWeek,
                NIN -> eName, 
            hotelNo -> hotelLocation,
         contractNo -> hotelNo
}
```
b)
``` 
{NIN, contractNo, {contractNo, hoursPerWeek}, {contractNo, eName}, {contractNo, hotelNo}, 
{contractNo, hotelLocation}, {hoursPerWeek, eName}, {hoursPerWeek, hotelNo}, {hoursPerWeek, hotelLocation}
{eName, hotelNo}, {eName, hotelLocation}, {hotelNo, hotelLocation}}
```
c)
|NIN|contractNo|hoursPerWeek|eName|
|---|---|---|---|
|113567WD|C1024|16|John Smith|
|234111XA|C1024|24|Diane Hocine|
|712670YD|C1025|28|Sarah White|
|113567WD|C1025|16|John Smith|

|contractNo|hotelNo|hotelLocation|
|---|---|---|
|C1024|H25|Edinburgh|
|C1024|H25|Edinburgh|
|C1025|H4|Glasgow|
|C1025|H4|Glasgow|

## Q3: Langues pures

a)
b)
c)
d)
e)

## Q4: RAID

|Déclaration|correspond à|Déclaration|
|---|---|---|
|1 - Je peux utiliser une technique RAID niveau 0 car|---|A - la tolérance aux pannes est importante pour mon application et je dois protéger mes données même si deux disques tombent en panne en même temps.|
|2 - Je peux utiliser une technique RAID niveau 1 car|---|B - je n'inquiet pas de perdre les données. Mon objectif principal est de pouvoir lire et écrire à grande vitesse.|
|3 - Je peux utiliser une technique RAID niveau 5 car|---|C - j'ai 6 disques disponibles mais j'ai besoin de la capacité de 5 d'entre eux ce qui signifie que je ne peux pas gaspier l'espace qu'un seul disque pour assurer la redondance.|
|4 - Je peux utiliser une technique RAID niveau 6 car|---|D - je n'ai que deux disques disponibles, ce qui représente plus du double de la capacité dont j'ai besoin pour mon application et je veut être capable de récupérer les données si nécessaire.|
|5 - Je préfère utiliser une approche paritaire plutôt qu'une approche miroir car|---|E - la tolérance aux pannes est importante pour mon application, mais je n'ai pas beaucoup d'espace disponible.|


## Q5: Arbre B+

a)
b)

## Q6: Index Bitmap

a)
b)
i)
ii)

## Q7: Hachage

a)
b)