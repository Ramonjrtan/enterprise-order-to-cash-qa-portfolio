-- Reconciliation checks
-- Replace table and column names with your actual schema.

-- 1. Payment totals by method for an open reconciliation period
SELECT
    payment_method,
    location_id,
    SUM(amount) AS total_amount
FROM payments
WHERE payment_date >= :period_start
  AND payment_date < :period_end
  AND status = 'posted'
GROUP BY payment_method, location_id;

-- 2. Orders with balance mismatch
SELECT
    o.order_id,
    o.order_total,
    COALESCE(SUM(p.amount),0) AS posted_payments,
    o.order_total - COALESCE(SUM(p.amount),0) AS remaining_balance
FROM orders o
LEFT JOIN payments p ON p.order_id = o.order_id AND p.status = 'posted'
GROUP BY o.order_id, o.order_total
HAVING ABS((o.order_total - COALESCE(SUM(p.amount),0)) - o.remaining_balance) > 0.01;

-- 3. Refunds greater than captured amount
SELECT
    r.payment_id,
    SUM(r.amount) AS refunded_amount,
    p.amount AS captured_amount
FROM refunds r
JOIN payments p ON p.payment_id = r.payment_id
GROUP BY r.payment_id, p.amount
HAVING SUM(r.amount) > p.amount;
