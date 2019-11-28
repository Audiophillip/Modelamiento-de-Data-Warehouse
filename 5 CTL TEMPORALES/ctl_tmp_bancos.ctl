OPTIONS(SKIP=1)
LOAD DATA
INFILE 'RCC_BANCOS_F.txt'
TRUNCATE PRESERVE BLANKS
INTO TABLE tmp_bancos
fields terminated '	'
trailing nullcols
(
CodEntidad,
Banco,
NombreBanco,
TipEntidad,
TipoCompetencia,
TipoCompetencia2
)