-- Unir ambas tablas mediante la columna ID
SELECT
    v.ID_HECHO,
    v.FECHA,
    v.ROL,
    v.SEXO,
    v.EDAD,
    v.FECHA_FALLECIMIENTO,
    v.AAAA,
    v.MES,
    v.AÑO_FALLECIMIENTO,
    v.MES_FALLECIMIENTO,
    h.LUGAR_DEL_HECHO AS LUGAR_DEL_HECHO,
    h.TIPO_DE_CALLE AS TIPO_DE_CALLE,
    h.CALLE AS CALLE,
    h.COMUNA AS COMUNA,
    h.VICTIMA AS VICTIMA,
    h.ACUSADO AS ACUSADO
FROM
    victimas_def v
LEFT JOIN
    hechos_def h ON v.ID_HECHO = h.ID;