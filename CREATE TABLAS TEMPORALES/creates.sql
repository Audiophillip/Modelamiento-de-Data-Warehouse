drop table tmp_ubigeo;
create table tmp_ubigeo(
Ubigeo varchar2(20),
Departamento varchar2(100),
Provincia varchar2(100),
Distrito  varchar2(100),
FlgZona  char(10),
FlgCiudad char(10)
);

CREATE TABLE TMP_ONPE(
NumDoc VARCHAR2(100),
DigVer VARCHAR2(100),
GrpVot VARCHAR2(100),
Ubigeo VARCHAR2(100),
ApPaterno VARCHAR2(100),
ApMaterno VARCHAR2(100),
Nombres VARCHAR2(100),
FecNac VARCHAR2(100),
Sexo VARCHAR2(100)
);
CREATE TABLE TMP_CREDITOS(
PERIODO varchar2(100),
TIP_REG varchar2(100),
COD_SBS_CLI varchar2(100),
COD_EMPRESA varchar2(100),
TIP_CREDITO varchar2(100),
COD_CUENTA varchar2(100),
CONDICION varchar2(100),
SALDO varchar2(100),
CLASIFICACION varchar2(100)
);

create table TMP_CLIENTEDEUDA
(
periodo VARCHAR2(50),
Tip_Reg VARCHAR2(50),
Cod_Sbs_Cli VARCHAR2(50),
Fec_Reporte VARCHAR2(50),
Tip_Doc_Tri VARCHAR2(50),
RUC VARCHAR2(50),
Tip_Doc_Ide VARCHAR2(50),
Doc_Identidad VARCHAR2(50),
Tip_Persona VARCHAR2(50),
Tip_Empresa VARCHAR2(50),
Can_Empresa VARCHAR2(50),
Deu_Calif0 VARCHAR2(50),
Deu_Calif1 VARCHAR2(50),
Deu_Calif2 VARCHAR2(50),
Deu_Calif3 VARCHAR2(50),
Deu_Calif4 VARCHAR2(50),
Raz_Soc_o_AP VARCHAR2(50),
Ape_Materna VARCHAR2(50),
Ape_Casada VARCHAR2(50),
Nombre1 VARCHAR2(50),
Nombre2 VARCHAR2(50)
);

CREATE TABLE tmp_bancos(
  CODENTIDAD varCHAR(100) ,
  NOMBANCO VARCHAR(100) ,
  NOMCORTO VARCHAR(45) ,
  TIPOENTIDAD VARCHAR(45) ,
  TIPOCOMPETENCIA VARCHAR(45) ,
  TIPOCOMPETENCIA2 VARCHAR(45) 
  )