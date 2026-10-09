# RetailChain

# Ejercicio 1: UNION y UNION ALL

## 1. ¿Cuántas filas devuelve cada consulta y por qué? ¿Qué filas elimina UNION?

Tanto `UNION` como `UNION ALL` devuelven 14 filas porque no existen filas completamente idénticas entre las dos tablas.

`UNION` elimina las filas duplicadas cuando coinciden todos los valores de las columnas seleccionadas. En cambio, `UNION ALL` conserva todas las filas, incluso si son idénticas.

Por ejemplo, si ambas tablas tuvieran un registro idéntico para el mismo producto, con el mismo ID, nombre, categoría y stock, `UNION` lo mostraría una sola vez, mientras que `UNION ALL` lo mostraría dos veces.

## 2. ¿Por qué UNION ALL suele ser más eficiente que UNION?

`UNION ALL` suele ser más eficiente porque devuelve todos los registros sin comprobar ni eliminar duplicados.

En cambio, `UNION` necesita realizar operaciones adicionales para identificar y eliminar las filas repetidas. Estas operaciones consumen tiempo y recursos del sistema.

## 3. ¿En qué situaciones reales de negocio utilizarías UNION y UNION ALL?

* **UNION:** lo utilizaría para combinar listados de clientes de dos sistemas diferentes, eliminando los registros completamente idénticos y evitando duplicaciones en el resultado.
* **UNION ALL:** lo utilizaría para combinar los registros de turnos de dos sistemas o períodos, conservando todos los registros para analizar la cantidad total de visitas y los servicios realizados.

## 4. ¿Qué sucede si los SELECT tienen distinta cantidad de columnas o tipos de datos incompatibles?

Los dos `SELECT` deben devolver la misma cantidad de columnas y las columnas correspondientes deben tener tipos de datos compatibles.

Si tienen distinta cantidad de columnas, SQL Server devuelve un error y no ejecuta la consulta. Si los tipos de datos son incompatibles y no pueden convertirse a un tipo común, también devuelve un error.

Si los tipos son compatibles o SQL Server puede convertirlos automáticamente, la consulta puede ejecutarse correctamente.
