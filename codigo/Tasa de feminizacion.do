tab pp04b_cod if aglomerado==12
tostring pp04b_cod, replace

************cambiados al primer trimestre 2020**************
replace pp04b_cod="0100" if pp04b_cod=="1"
replace pp04b_cod="4800" if pp04b_cod=="48"
replace pp04b_cod="5600" if pp04b_cod=="56"
replace pp04b_cod="0101" if pp04b_cod=="101"
replace pp04b_cod="0102" if pp04b_cod=="102"
replace pp04b_cod="0103" if pp04b_cod=="103"
replace pp04b_cod="0104" if pp04b_cod=="104"
replace pp04b_cod="0300" if pp04b_cod=="300"
replace pp04b_cod="0200" if pp04b_cod=="200"


gen str2 CodAct = ""
replace CodAct = substr(pp04b_cod,1,2) 

g Agricultura=0
replace Agricultura=1 if CodAct=="01"
replace Agricultura=1 if CodAct=="02"
replace Agricultura=1 if CodAct=="03"

g Mineria=0
replace Mineria=1 if CodAct=="05"
replace Mineria=1 if CodAct=="06"
replace Mineria=1 if CodAct=="07"
replace Mineria=1 if CodAct=="08"
replace Mineria=1 if CodAct=="09"


g Manuf=0
replace Manuf=1 if CodAct=="10"
replace Manuf=1 if CodAct=="11"
replace Manuf=1 if CodAct=="12"
replace Manuf=1 if CodAct=="13"
replace Manuf=1 if CodAct=="14"
replace Manuf=1 if CodAct=="15"
replace Manuf=1 if CodAct=="16"
replace Manuf=1 if CodAct=="17"
replace Manuf=1 if CodAct=="18"
replace Manuf=1 if CodAct=="19"
replace Manuf=1 if CodAct=="20"
replace Manuf=1 if CodAct=="21"
replace Manuf=1 if CodAct=="22"
replace Manuf=1 if CodAct=="23"
replace Manuf=1 if CodAct=="24"
replace Manuf=1 if CodAct=="25"
replace Manuf=1 if CodAct=="26"
replace Manuf=1 if CodAct=="27"
replace Manuf=1 if CodAct=="28"
replace Manuf=1 if CodAct=="29"
replace Manuf=1 if CodAct=="30"
replace Manuf=1 if CodAct=="31"
replace Manuf=1 if CodAct=="32"
replace Manuf=1 if CodAct=="33"

g SuminElect=0
replace SuminElect=1 if CodAct=="35"

g SuminAgua=0
replace SuminAgua=1 if CodAct=="36"
replace SuminAgua=1 if CodAct=="37"
replace SuminAgua=1 if CodAct=="38"
replace SuminAgua=1 if CodAct=="39"

g Construccion=0
replace Construccion=1 if CodAct=="40"

g Autom=0
replace Autom=1 if CodAct=="45"
replace Autom=1 if CodAct=="48"

g Transporte=0
replace Transporte=1 if CodAct=="49"
replace Transporte=1 if CodAct=="50"
replace Transporte=1 if CodAct=="51"
replace Transporte=1 if CodAct=="52"
replace Transporte=1 if CodAct=="53"

g AlojyComida=0
replace AlojyComida=1 if CodAct=="55"
replace AlojyComida=1 if CodAct=="56"

g Comunicacion=0
replace Comunicacion=1 if CodAct=="58"
replace Comunicacion=1 if CodAct=="59"
replace Comunicacion=1 if CodAct=="60"
replace Comunicacion=1 if CodAct=="61"
replace Comunicacion=1 if CodAct=="62"
replace Comunicacion=1 if CodAct=="63"

g Financiera=0
replace Financiera=1 if CodAct=="64"
replace Financiera=1 if CodAct=="65"
replace Financiera=1 if CodAct=="66"

g Inmobiliarias=0
replace Inmobiliarias=1 if CodAct=="68"

g Profesionales=0
replace Profesionales=1 if CodAct=="69"
replace Profesionales=1 if CodAct=="70"
replace Profesionales=1 if CodAct=="71"
replace Profesionales=1 if CodAct=="72"
replace Profesionales=1 if CodAct=="73"
replace Profesionales=1 if CodAct=="74"
replace Profesionales=1 if CodAct=="75"

g Admin=0
replace Admin=1 if CodAct=="77"
replace Admin=1 if CodAct=="78"
replace Admin=1 if CodAct=="79"
replace Admin=1 if CodAct=="80"
replace Admin=1 if CodAct=="81"
replace Admin=1 if CodAct=="82"

g AdminPublica=0
replace AdminPublica=1 if CodAct=="83"
replace AdminPublica=1 if CodAct=="84"

g Enseñanza=0
replace Enseñanza=1 if CodAct=="85"

g Salud=0
replace Salud=1 if CodAct=="86"
replace Salud=1 if CodAct=="87"
replace Salud=1 if CodAct=="88"

g Arte=0
replace Arte=1 if CodAct=="90"
replace Arte=1 if CodAct=="91"
replace Arte=1 if CodAct=="92"
replace Arte=1 if CodAct=="93"

g OtrosServ=0
replace OtrosServ=1 if CodAct=="94"
replace OtrosServ=1 if CodAct=="95"
replace OtrosServ=1 if CodAct=="96"

g ActHogares=0
replace ActHogares=1 if CodAct=="97"
replace ActHogares=1 if CodAct=="98"

g ActExtrater=0
replace ActExtrater=1 if CodAct=="99"


gen mujeres=.
replace mujeres=1 if ch04==2
replace mujeres=0 if ch04==1

*TASA DE FEMINIZACION

*Corrientes Capital
*Agricultura
tab mujeres if (aglomerado==12 & estado==1 & Agricultura==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Mineria
tab mujeres if (aglomerado==12 & estado==1 & Mineria==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Manufacturas
tab mujeres if (aglomerado==12 & estado==1 & Manuf==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Electricidad
tab mujeres if (aglomerado==12 & estado==1 & SuminElect==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Suministro de agua
tab mujeres if (aglomerado==12 & estado==1 & SuminAgua==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Construccion
tab mujeres if (aglomerado==12 & estado==1 & Construccion==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Automotriz
tab mujeres if (aglomerado==12 & estado==1 & Autom==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Transporte
tab mujeres if (aglomerado==12 & estado==1 & Transporte==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Alojamiento y Comida
tab mujeres if (aglomerado==12 & estado==1 & AlojyComida==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Comunicacion
tab mujeres if (aglomerado==12 & estado==1 & Comunicacion==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Finacieros
tab mujeres if (aglomerado==12 & estado==1 & Financiera==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Inmobiliarias
tab mujeres if (aglomerado==12 & estado==1 & Inmobiliarias==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Profesionales
tab mujeres if (aglomerado==12 & estado==1 & Profesionales==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Actividades administrativas
tab mujeres if (aglomerado==12 & estado==1 & Admin==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Administracion Publica
tab mujeres if (aglomerado==12 & estado==1 & AdminPublica==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Enseñanza
tab mujeres if (aglomerado==12 & estado==1 & Enseñanza==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Salud
tab mujeres if (aglomerado==12 & estado==1 & Salud==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Arte
tab mujeres if (aglomerado==12 & estado==1 & Arte==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Otros servicios
tab mujeres if (aglomerado==12 & estado==1 & OtrosServ==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Actividaes Hogares
tab mujeres if (aglomerado==12 & estado==1 & ActHogares==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]
*Actividades de  organizaciones y organismos
tab mujeres if (aglomerado==12 & estado==1 & ActExtrater==1 & pp3e_tot>0 & pp3e_tot!=999 & p21>0) [fw=pondera]





*Ingreso medio

gen ing_real=.
replace ing_real= p21/0.725691108 if trimestre==2 & ano4==2019
replace ing_real= p21/0.799235826 if trimestre==3 & ano4==2019
replace ing_real= p21/0.908178822 if trimestre==4 & ano4==2019
replace ing_real= p21/1 if trimestre==1 & ano4==2020

*Ingreso medio
*Corrientes
*ActividaDes Hogares
sum ing_real if (aglomerado==12 & estado==1 & ActHogares==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Enseñanza
sum ing_real if (aglomerado==12 & estado==1 & Enseñanza==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Construccion
sum ing_real if (aglomerado==12 & estado==1 & Construccion==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Salud
sum ing_real if (aglomerado==12 & estado==1 & Salud==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Alojamiento y Comida
sum ing_real if (aglomerado==12 & estado==1 & AlojyComida==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Administracion Publica
sum ing_real if (aglomerado==12 & estado==1 & AdminPublica==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Manufacturas
sum ing_real if (aglomerado==12 & estado==1 & Manuf==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Automotriz(Comercio)
sum ing_real if (aglomerado==12 & estado==1 & Autom==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Mineria
sum ing_real if (aglomerado==12 & estado==1 & Mineria==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Electricidad
sum ing_real if (aglomerado==12 & estado==1 & SuminElect==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Suministro de agua
sum ing_real if (aglomerado==12 & estado==1 & SuminAgua==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Inmobiliarias
sum ing_real if (aglomerado==12 & estado==1 & Inmobiliarias==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Profesionales
sum ing_real if (aglomerado==12 & estado==1 & Profesionales==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Actividades administrativas
sum ing_real if (aglomerado==12 & estado==1 & Admin==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Arte
sum ing_real if (aglomerado==12 & estado==1 & Arte==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Finacieros
sum ing_real if (aglomerado==12 & estado==1 & Financiera==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Actividades de  organizaciones y organismos
sum ing_real if (aglomerado==12 & estado==1 & ActExtrater==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Agricultura
sum ing_real if (aglomerado==12 & estado==1 & Agricultura==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Otros servicios
sum ing_real if (aglomerado==12 & estado==1 & OtrosServ==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Transporte
sum ing_real if (aglomerado==12 & estado==1 & Transporte==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Comunicacion
sum ing_real if (aglomerado==12 & estado==1 & Comunicacion==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]





*ingreso laboral por hora en corrientes

gen ing_lab_hs=.
replace ing_lab_hs= ing_real / (pp3e_tot*30/7)

*Actividaes Hogares
sum ing_lab_hs if (aglomerado==12 & estado==1 & ActHogares==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Enseñanza
sum ing_lab_hs if (aglomerado==12 & estado==1 & Enseñanza==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Construccion
sum ing_lab_hs if (aglomerado==12 & estado==1 & Construccion==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Salud
sum ing_lab_hs if (aglomerado==12 & estado==1 & Salud==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Alojamiento y Comida
sum ing_lab_hs if (aglomerado==12 & estado==1 & AlojyComida==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Administracion Publica
sum ing_lab_hs if (aglomerado==12 & estado==1 & AdminPublica==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Manufacturas
sum ing_lab_hs if (aglomerado==12 & estado==1 & Manuf==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Automotriz(Comercio)
sum ing_lab_hs if (aglomerado==12 & estado==1 & Autom==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Mineria
sum ing_lab_hs if (aglomerado==12 & estado==1 & Mineria==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Electricidad
sum ing_lab_hs if (aglomerado==12 & estado==1 & SuminElect==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Suministro de agua
sum ing_lab_hs if (aglomerado==12 & estado==1 & SuminAgua==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Inmobiliarias
sum ing_lab_hs if (aglomerado==12 & estado==1 & Inmobiliarias==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Profesionales
sum ing_lab_hs if (aglomerado==12 & estado==1 & Profesionales==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Actividades administrativas
sum ing_lab_hs if (aglomerado==12 & estado==1 & Admin==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Arte
sum ing_lab_hs if (aglomerado==12 & estado==1 & Arte==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Finacieros
sum ing_lab_hs if (aglomerado==12 & estado==1 & Financiera==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Actividades de  organizaciones y organismos
sum ing_lab_hs if (aglomerado==12 & estado==1 & ActExtrater==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Agricultura
sum ing_lab_hs if (aglomerado==12 & estado==1 & Agricultura==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Otros servicios
sum ing_lab_hs if (aglomerado==12 & estado==1 & OtrosServ==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Transporte
sum ing_lab_hs if (aglomerado==12 & estado==1 & Transporte==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]
*Comunicacion
sum ing_lab_hs if (aglomerado==12 & estado==1 & Comunicacion==1 & pp3e_tot>0 & pp3e_tot!=999 & ing_real>0) [fw=pondiio]



