  CREATE OR REPLACE TABLE `ivory-antler-436212-i2.analytics_layer.region_revenue` AS
SELECT
  region,
  SUM(amount) AS total_revenue,
  COUNT(order_id) AS total_orders
FROM `ivory-antler-436212-i2.staging_layer.orders_staging1`
GROUP BY region
ORDER BY total_revenue DESC;
