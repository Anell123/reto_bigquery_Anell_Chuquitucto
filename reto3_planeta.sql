SELECT
  c.nombre_cliente,
  c.telefono,
  i.nombre_articulo,
  v.fecha,
  v.cantidad,
  i.costo,
  v.usuario
FROM
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_clientes` c
INNER JOIN
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_ventas` v
ON
  c.codigo_cliente = v.codigo_cliente
INNER JOIN
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_inventarios` i
ON
  i.codigo_articulo = v.codigo_articulo
GROUP BY c.nombre_cliente, c.telefono,i.nombre_articulo, v.fecha, i.costo, v.usuario, v.cantidad
