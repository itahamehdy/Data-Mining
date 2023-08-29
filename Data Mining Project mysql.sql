SELECT
    p1.StockCode AS Product1,
    p2.StockCode AS Product2,
    COUNT(DISTINCT p1.InvoiceNo) AS CoPurchaseCount
FROM
    `online retail.`.`online retail.` p1
JOIN
   `online retail.`.`online retail.` p2 ON p1.InvoiceNo = p2.InvoiceNo AND p1.StockCode < p2.StockCode
GROUP BY
    Product1, Product2
HAVING
    CoPurchaseCount > 10  -- Adjust the threshold as needed
ORDER BY
    CoPurchaseCount DESC
LIMIT
    10;
