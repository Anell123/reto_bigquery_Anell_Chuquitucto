SELECT
  p.v2ProductName AS NombreProducto,
  COUNT(p.v2ProductName) AS Cantidad
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
  UNNEST(hits) AS cant,
  UNNEST(cant.product) AS p
GROUP BY
  NombreProducto
ORDER BY 
    Cantidad DESC 