SELECT
  region,
  SUM(revenue) AS revenue_by_region,
  COUNT(DISTINCT order_id) AS order_count
FROM `ivory-antler-436212-i2.retail_ds.retail_transformed`
GROUP BY region
ORDER BY revenue_by_region DESC;

SELECT
  product,
  SUM(revenue) AS product_revenue,
  SUM(quantity) AS units_sold
FROM `ivory-antler-436212-i2.retail_ds.retail_transformed`
GROUP BY product
ORDER BY product_revenue DESC;
