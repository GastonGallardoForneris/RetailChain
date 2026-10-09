USE RetailChain;

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_norte

UNION

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_sur;


-- Consulta 2: UNION ALL

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_norte

UNION ALL

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_sur;

SELECT COUNT(*)
FROM (
    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_norte

    UNION

    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_sur
) AS resultado;

SELECT COUNT(*)
FROM (
    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_norte

    UNION ALL

    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_sur
) AS resultado;