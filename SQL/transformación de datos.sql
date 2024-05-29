-- Seleccionar la base de datos
USE PowerBI_homicidios;

-- Reemplazar valores vacíos con SD en AÑO_FALLECIMIENTO
UPDATE victimas_def
SET AÑO_FALLECIMIENTO = "SD"
WHERE AÑO_FALLECIMIENTO = '';

-- Reemplazar valores vacíos con SD en MES_FALLECIMIENTO
UPDATE victimas_def
SET MES_FALLECIMIENTO = "SD"
WHERE MES_FALLECIMIENTO = '';

 -- Reemplazar valores vacíos con NULL en FECHA_FALLECIMIENTO
UPDATE victimas_def
SET FECHA_FALLECIMIENTO = NULL
WHERE FECHA_FALLECIMIENTO = ''; 

-- Reemplazar valores vacíos con NULL en EDAD
UPDATE victimas_def
SET EDAD = NULL
WHERE EDAD = '';

-- Eliminar ".0" de los valores en AÑO_FALLECIMIENTO
UPDATE victimas_def
SET AÑO_FALLECIMIENTO = REPLACE(AÑO_FALLECIMIENTO, '.0', '')
WHERE AÑO_FALLECIMIENTO LIKE '%.0';

-- Eliminar ".0" de los valores en MES_FALLECIMIENTO
UPDATE victimas_def
SET MES_FALLECIMIENTO = REPLACE(MES_FALLECIMIENTO, '.0', '')
WHERE MES_FALLECIMIENTO LIKE '%.0';

-- Eliminar ".0" de los valores en GEN_BIN
UPDATE victimas_def
SET GEN_BIN = REPLACE(GEN_BIN, '.0', '')
WHERE GEN_BIN LIKE '%.0';

-- Eliminar ".0" de los valores en EDAD
UPDATE victimas_def
SET EDAD = REPLACE(EDAD, '.0', '')
WHERE EDAD LIKE '%.0';

-- Modificar el tipo de dato de las columnas de VARCHAR a INT
ALTER TABLE victimas_def
MODIFY COLUMN FECHA_FALLECIMIENTO DATE,
MODIFY COLUMN EDAD INT; 


