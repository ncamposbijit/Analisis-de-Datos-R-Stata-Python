
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

*-----------*
* Ejercicio 2
*-----------*


local base = "polity natural_resources_pct_gdp gdp_per_cap"

set more off 
eststo clear
eststo: reg `base'

* Agregaar variable de población
eststo: reg `base' population

* Esperanza de vida 
eststo: reg `base' life_expectancy under5_mortality


* Esperanza de vida 
eststo: reg `base' under5_mortality


*-----------*
* Ejercicio 3
*-----------*

clear all
use wdi.dta, replace

* Calculamos y guardamos en una macro
sum literacy_rate, d
local promedio = r(mean)

* Cambiamos el formato 
local promedio_formato: display %9.2f `promedio'
display "`promedio_formato'"

* Para exportarlo 
file open myfile using "midato1.tex", write text replace
file write myfile "`promedio_formato'"
file close myfile

* Este dato debe ser imputado en el texto. Por ejemplo, 
* en latex, pueden utilizar \input. 


