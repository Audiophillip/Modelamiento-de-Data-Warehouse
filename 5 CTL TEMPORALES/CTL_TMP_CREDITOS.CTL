OPTIONS (SKIP=1)
LOAD DATA
INFILE 'RCCs_30K.txt'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_CREDITOS
fields terminated '	' Optionally Enclosed By '"'
trailing nullcols
(
PERIODO,
TIP_REG,
COD_SBS_CLI,
COD_EMPRESA,
TIP_CREDITO,
COD_CUENTA,
CONDICION,
SALDO,
CLASIFICACION
)