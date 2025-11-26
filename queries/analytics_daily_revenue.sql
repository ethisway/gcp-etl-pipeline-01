CREATE OR REPLACE TABLE `ivory-antler-436212-i2.analytics_layer.daily_revenue` AS
SELECT
  order_date,
  SUM(amount) AS total_revenue,
  COUNT(order_id) AS total_orders,
  AVG(amount) AS avg_order_value
FROM `ivory-antler-436212-i2.staging_layer.orders_staging1`
GROUP BY order_date
ORDER BY order_date;
