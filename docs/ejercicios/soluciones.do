
* Agradecimientos a Nick Eubank por los ejemplos. 

*-----------*
* Ejercicio 1
*-----------*

* 1. Fijar directorio de trabajo aquí 

cd "$data"
* Cargar datos WDi 
use wdi, clear


* 2. Escribir el primer assert  

* El rol de assert 
duplicates tag, g(dup)
tab dup
sum dup 
assert r(max) == 0

* Solución 
use wdi, clear
duplicates drop 
duplicates tag, g(dup)
sum dup 
assert r(max) == 0

*-----------*
* Ejercicio 2
*-----------*

* Merge con polity. Polity debe ser un subconjunto de WDI

use wdi, clear 
duplicates drop 
rename country_name country

* Juntar bases de datos 
merge 1:1 country using polity.dta 

* No permite avanzar si la expresió no es verdadera. 
assert _merge!=2
* Miremos 
tab _merge
br if _merge ==2 

* Solución

use wdi, clear 
duplicates drop 
rename country_name country

* Arreglar nombres
replace country = "Myanmar (Burma)" if country == "Myanmar"
replace country = "Russia" if country == "Russian Federation"

merge 1:1 country using polity.dta 
assert _merge!=2
