-- Reporting validation queries

-- Compare payment report summary to transaction detail
SELECT
    DATE(payment_date) AS payment_day,
    COUNT(*) AS payment_count,
    SUM(amount) AS payment_total
FROM payments
WHERE status = 'posted'
GROUP BY DATE(payment_date)
ORDER BY payment_day;

-- Check for transactions mapped to missing deposit accounts
SELECT payment_id, payment_method, deposit_account_id
FROM payments
WHERE deposit_account_id IS NULL;

-- Check for multi-location mismatches
SELECT p.payment_id, p.location_id, o.location_id AS order_location_id
FROM payments p
JOIN orders o ON o.order_id = p.order_id
WHERE p.location_id <> o.location_id;
