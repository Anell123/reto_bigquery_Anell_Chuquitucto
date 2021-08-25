SELECT *
FROM
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_clientes` clientes
INNER JOIN
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_ventas` ventas
ON
  clientes.codigo_cliente = ventas.codigo_cliente
INNER JOIN
  `bootcamp-tismart.retos_Anell_Chuquitucto.registro_inventarios` inventario
ON
  inventario.codigo_articulo = ventas.codigo_articulo