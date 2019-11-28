options (skip=1)
load data
INFILE 'DATA_CLIENTESRCC.TXT'
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_CLIENTEDEUDA
fields terminated '|'
trailing nullcols
(
periodo,
Tip_Reg,
Cod_Sbs_Cli,
Fec_Reporte,
Tip_Doc_Tri,
RUC,
Tip_Doc_Ide,
Doc_Identidad,
Tip_Persona,
Tip_Empresa,
Can_Empresa,
Deu_Calif0,
Deu_Calif1,
Deu_Calif2,
Deu_Calif3,
Deu_Calif4,
Raz_Soc_o_AP,
Ape_Materna,
Ape_Casada,
Nombre1,
Nombre2
)
