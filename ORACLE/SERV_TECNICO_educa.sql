CREATE TABLE CLIENTE
(ID_CLIENTE NUMBER(5),
TIPO_DOCUMENTO VARCHAR2(1) NOT NULL, 
NUMERO VARCHAR2(15) NOT NULL,
TIPO_PERSONA VARCHAR2(1),
NOMBRES VARCHAR2(100),
APELLIDOS VARCHAR2(100) NOT NULL,
DIRECCION VARCHAR2(100) NOT NULL,
TELEFONO VARCHAR2(20) NOT NULL,
CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE)
);

CREATE TABLE FABRICANTE
(ID_FABRICANTE NUMBER(5),
NOMBRE VARCHAR2(50) NOT NULL,
CONSTRAINT PK_FABRICANTE PRIMARY KEY  (ID_FABRICANTE)
);

CREATE TABLE MODELO
(ID_MODELO NUMBER(5),
ID_FABRICANTE NUMBER(5) NOT NULL,
NOMBRE_MODELO VARCHAR2(50) NOT NULL,
AÑO_FABRICACION NUMBER(4) NOT NULL,
PROCESADOR VARCHAR2(50) NOT NULL,
MEMORIA_INT NUMBER (3,2) NOT NULL,
MEMORIA_EXP NUMBER (3,2) NOT NULL,
DUAL_SIM VARCHAR2(1) NOT NULL,
SISTEMA_OPERATIVO VARCHAR2(20) NOT NULL,
TAMAÑO_DISPLAY NUMBER(3,2) NOT NULL,
TIPO_DISPLAY  VARCHAR2(20) NOT NULL,
CAMARA_TRAS NUMBER (2) NOT NULL,
CAMARA_FRONTAL NUMBER(2)NOT NULL,
LARGO NUMBER (3,2)NOT NULL,
ANCHO NUMBER (3,2)NOT NULL,
ALTO NUMBER (3,2)NOT NULL,
TIPO_BATERIA VARCHAR2(20)NOT NULL,
AMPERAJE_BATERIA  NUMBER(5)NOT NULL,
CONSTRAINT PK_MODELO PRIMARY KEY (ID_MODELO),
CONSTRAINT FK_MOD_FAB FOREIGN KEY (ID_FABRICANTE) REFERENCES FABRICANTE(ID_FABRICANTE)
);

CREATE TABLE TELEFONO (
 IMEI NUMBER(15),
 ID_MODELO NUMBER(5),
 ID_CLIENTE NUMBER(5),
 CONSTRAINT PK_TELEFONO PRIMARY KEY (IMEI),
 CONSTRAINT FK_TEL_MOD FOREIGN KEY (ID_MODELO) REFERENCES MODELO(ID_MODELO),
 CONSTRAINT FK_TEL_CLI FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

CREATE TABLE TIPO_SERVICIO (
 ID_TIPO NUMBER(5),
 DESCRIPCION VARCHAR2(50),
 COSTO_SERVICIO NUMBER(12),
 CONSTRAINT PK_TIP_SER PRIMARY KEY (ID_TIPO)
);

CREATE TABLE REPUESTOS (
 ID_REPUESTO NUMBER(5),
 DESCRIPCION VARCHAR2(50),
 STOCK_MINIMO NUMBER,
 STOCK_ACTUAL NUMBER,
 COSTO NUMBER(12),
 CONSTRAINT PK_REP PRIMARY KEY (ID_REPUESTO)
);
