OPTIONS(SKIP=1)
LOAD DATA
INFILE 'DATA_ONPE.TXT'
TRUNCATE PRESERVE BLANKS
INTO TABLE tmp_ONPE
fields terminated '|'
trailing nullcols
(
NumDoc ,
DigVer,
GrpVot,
Ubigeo,
ApPaterno,
ApMaterno,
Nombres ,
FecNac,
Sexo 

)