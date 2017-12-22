--Muestra todos los datos de la tabla: select * from accidents.

select * from Accidents;

--Muestra el dia y el tipo de via de los accidentes mortales se han producido entre 2011 y 2015

/*select dia,tipus_de_via
FROM Accidents
WHERE (dia between '2011-01-01' and '2015-12-31 23:59:59.999') 
and (gravetat='Accident mortal');*/

--Muestra la zona, el día y el punto kilométrico de los accidentes mortales producidos por atropellamientos por la mañana ( entre las 8:00 y las 13:00 )
select zona, punt_kilometric,dia
FROM Accidents
where (hora between 8 and 13) 
and (subtipus_accident='Atropellament') 
and (gravetat='Accident mortal');
--Muestra el número de muertos de los accidentes en carreteras del municipio de barcelona.
SELECT número_de_morts,nom_municipi
FROM Accidents
WHERE nom_municipi='BARCELONA'
--Muestra todos los datos de los accidentes con heridos leves con lluvia en fin de semana.
SELECT *
FROM victimes_raw
WHERE _F_FERITS_LLEUS_ >0 
and _D_CLIMATOLOGIA_ in ('Pluja dèbil','Pluja forta') 
and _tipDia_ in ('dis','dg')
--Muestra todos los datos de los accidentes mortales han habido en la AP-7 ordenado por punto kilométrico
SELECT *
FROM victimes_raw
WHERE (_F_MORTS_>=1
and _via_='AP-7')
ORDER BY _pk_
--Muestra todos los datos de los accidentes que han habido en vías con velocidad máxima de 120 km/h
SELECT *
FROM Accidents
WHERE velocitat_de_la_via= 120  




--Muestra todos los datos de los accidentes que han habido en el año 2011 que se hayan producido con un buen clima y sin muertos
SELECT *
FROM Accidents
WHERE AnyAccident= 2011 
and número_de_morts= 0 
and climatologia='Bon temps'



--Muestra todos los datosde los accidentes con más de 2 víctimas mortales ha habido en 2011
SELECT *
FROM Accidents
WHERE AnyAccident= 2011 AND número_de_morts>2
--Muestra todos los datos de los accidentes con niebla y buena visibilidad.
SELECT*
FROM Accidents
WHERE amb_boira='Si' and influint_visibilitat='No'
--Muestra todos los datos de los accidentes en fin de semana en vias de doble sentido o que no se conozca si es de doble sentido o no.
select *
from Accidents
where diaLaborable = 'CapDeSetmana' 
and (sentits_de_la_via = 'Doble sentit' or sentits_de_la_via is NULL)
--Muestra el municipio i el dia de los accidentes de l'Alt Empordà con más de 2 muertos.
SELECT nom_municipi, dia
FROM Accidents
where comarca='Alt Emporda' and número_de_morts>2
--Muestra todos los datos de los accidentes que ha habido entre el 2011 y 2013, y que no fueron en la via AP-7
SELECT *
FROM victimes_raw
where _via_ !='AP-7' and _Any_ between 2011 and 2013
--Muestra todos los datos de los accidentes de los municipios que contengan una U o una E pero que no contengan un R.
SELECT *
FROM Accidents
where (nom_municipi like '%U%' OR 
nom_municipi like '%E%') and
nom_municipi not like '%R%'
--Muestra todos los datos de los accidentes de los municipios que contengan una R i una E pero no juntas.
SELECT *
FROM Accidents
where nom_municipi like '%U_%E%' or nom_municipi '%E_%U%'

--Muestra la velocidad del viento y la velocidad máxima de la vía de todos los accidentes en los que influye el viento.
select vent, velocitat_de_la_via
from Accidents
where influint_intensitat_del_vent='si'
