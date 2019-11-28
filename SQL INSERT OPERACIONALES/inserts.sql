
INSERT INTO M_CREDITOS (
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

SELECT 
PERIODO ,
TIP_REG ,
COD_SBS_CLI ,
COD_EMPRESA ,
TIP_CREDITO ,
COD_CUENTA ,
CONDICION ,
cast(trim(replace(SALDO,'.',',')) as decimal(10,2)) , 
CLASIFICACION
from tmp_creditos;


insert into M_CLIENTEDEUDA (
 PERIODO,
 TIPREG,
 CODSBSCLI,
 FECREPORTE,
 TIPODOCTRI ,
 RUC,
 TIPDOCIDE ,
 NUMDOC,
 TIPPERSONA ,
 TIPEMPRESA,
 CANEMPRESA,
 DEU_CALIF0 ,
 DEU_CALIF1,
 DEU_CALIF2,
 DEU_CALIF3 ,
 DEU_CALIF4 ,
 RAZSOC_APEC,
 APEMAT,
 APECASADA,
 NOMBRE1 ,
 NOMBRE2  
)
select
periodo,
Tip_Reg ,
Cod_Sbs_Cli,
Fec_Reporte,
Tip_Doc_Tri,
RUC,
Tip_Doc_Ide,
Doc_Identidad ,
Tip_Persona,
Tip_Empresa ,
Can_Empresa,
cast(trim(replace(Deu_Calif0,'.',',')) as decimal(10,2))   ,
cast(trim(replace(Deu_Calif1,'.',',')) as decimal(10,2)) ,
cast(trim(replace(Deu_Calif2,'.',',')) as decimal(10,2))  ,
cast(trim(replace(Deu_Calif3,'.',',')) as decimal(10,2)),
cast(trim(replace(Deu_Calif4,'.',',')) as decimal(10,2))  ,
Raz_Soc_o_AP ,
Ape_Materna ,
Ape_Casada ,
Nombre1,
Nombre2 
from
TMP_CLIENTEDEUDA ;

INSERT INTO M_PERSONAS(
NUMDOC,
DigVer,
GrpVot,
CODUBIGEO,
 ApPaterno ,
  ApMaterno ,
  Nombres ,
  FecNac ,
  Sexo 
)
SELECT NumDoc ,
DigVer,
GrpVot ,
Ubigeo,
ApPaterno,
ApMaterno ,
Nombres ,
to_date(FecNac,'YYYYMMDD') ,
Sexo  FROM TMP_ONPE;


INSERT INTO M_ENTIDADFINANCIERA(
  CODENTIDAD  ,
  NOMBANCO  ,
  NOMCORTO  ,
  TIPOENTIDAD  ,
  TIPOCOMPETENCIA  ,
  TIPOCOMPETENCIA2
  
  )
  SELECT 
  CODENTIDAD  ,
  BANCO  ,
  NOMBREBANCO  ,
  TIPENTIDAD  ,
  TIPOCOMPETENCIA  ,
  TIPOCOMPETENCIA2
  FROM TMP_BANCOS;



insert into  M_UBIGEO (
CODUBIGEO,
DEPARTAMENTO,
PROVINCIA,
DISTRITO,
FLG_ZONA,
FLG_CIUDAD  
)
select
UBIGEO,
DEPARTAMENTO,
PROVINCIA,
DISTRITO,
FLGZONA,
FLGCIUDAD 
from TMP_UBIGEO;




