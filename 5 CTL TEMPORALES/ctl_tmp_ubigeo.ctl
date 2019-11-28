OPTIONS(SKIP=1)
LOAD DATA
INFILE 'RC_UBIGEOS_FINAL_f.txt'
TRUNCATE PRESERVE BLANKS
INTO TABLE tmp_ubigeo
fields terminated '	'
trailing nullcols
(
Ubigeo,
Departamento,
Provincia,
Distrito,
FlgZona,
FlgCiudad
)