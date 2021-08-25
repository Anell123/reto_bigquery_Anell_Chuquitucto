SELECT
  device.browser AS Browser,
  SUM(totals.visits) AS Visitas
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
GROUP BY
  Browser 
ORDER BY 
    Visitas DESC 

