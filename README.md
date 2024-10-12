# MineriaT2_
Descripción de 3 reglas de asociación encontradas con el algoritmo apriori, debe explicar con sus palabras el porqué se dan esos comportamientos. 




Apriori

Parameter specification:
 confidence minval smax arem  aval originalSupport maxtime support minlen maxlen target  ext
        0.5    0.1    1 none FALSE            TRUE       5     0.2      1     10  rules TRUE

Algorithmic control:
 filter tree heap memopt load sort verbose
    0.1 TRUE TRUE  FALSE TRUE    2    TRUE

Absolute minimum support count: 200000 

set item appearances ...[0 item(s)] done [0.00s].
set transactions ...[314 item(s), 1000000 transaction(s)] done [3.74s].
sorting and recoding items ... [82 item(s)] done [0.86s].
creating transaction tree ... done [2.05s].
checking subsets of size 1 2 3 done [16.66s].
writing ... [69734 rule(s)] done [0.13s].
creating S4 object  ... done [0.32s].
There were 50 or more warnings (use warnings() to see the first 50)
> inspect(reglas[0:200])



[127] {PCP32_1D=[7,14)}                        => {PCP10_B=[1,22]}                         0.212224  0.9681001 0.219217 1.0003649  212224

PCP32_1D	59	Actividad 1 dígito	Numérico (2)

7	Comercio al por mayor y al por menor; reparación de vehículos automotores y motocicletas
8	Transporte y almacenamiento
9	Actividades de alojamiento y de servicio de comidas
10	Información y comunicaciones
11	Actividades financieras y de seguros
12	Actividades inmobiliarias
13	Actividades profesionales, científicas y técnicas
14	Actividades de servicios administrativos y de apoyo

PCP10_B	14	Departamento de nacimiento	Numérico (4)

En todos los departamentos


Esto puede reflejar la distribución de que actividades son las más trabajadas en diferentes áreas o la movilidad laboral dentro del país, entre las actividades económicas y el lugar de nacimiento.



[84]  {PCP17_B=[3,5)}                          => {PCP23_A=[25,28]}                        0.219663  0.9893526 0.222027 1.1651684  219663

PCP17_B	33	¿Cuál fue el grado de estudios más alto que aprobó?	Numérico (2)
3	Primaria
4	Nivel medio (básico y diversificado)
5	Licenciatura

PCP23_A	42	¿En qué idioma sabe leer y escribir? Idioma 1	Numérico (2)
25	Español
26	Inglés
27	Señas
28	Otro idioma

Las personas con estudios entre primaria y licenciatura tienen una alta probabilidad de saber leer y escribir, principalmente en español, pero también en otros idiomas, lo que puede ser relevante en  multilingües o de aprendizaje de segundas lenguas.


[34]  {ANEDUCA=[0,6)}    => {MIGRA_VIDA=[1,2]}        0.248447 0.9837537  0.252550 0.9996004 248447

ANEDUCA	78	Años de Estudio	Numérico (2)

0	0 años de estudio
1	1 año de estudio
2	2 años de estudio
3	3 años de estudio
4	4 años de estudio
5	5 años de estudio
6	6 años de estudio

MIGRA_VIDA	82	Migrante y no migrante (migración de toda la vida)	Numérico (1)

Este resultado sugiere que las personas con bajo nivel educativo (0 a 6 años de estudio) tienen una probabilidad muy alta de haber experimentado migración en algún momento de su vida.



