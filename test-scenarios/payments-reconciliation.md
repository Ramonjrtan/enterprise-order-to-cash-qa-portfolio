# Payments and Reconciliation Scenarios

## Coverage
- built-in payment methods
- custom payment methods
- integrated credit card methods
- portal payments
- full and partial refunds
- daily reconciliation

## High-Risk Scenarios
1. Credit Card (Integrated) payment succeeds but order balance stays unchanged
2. Credit Card (Non-integrated) manually entered with wrong amount
3. Portal Pay Now button visible even when integration disabled
4. Partial refund greater than captured amount
5. Reconciliation closes while Difference != 0.00
6. Custom payment method mapped to wrong deposit account
7. Multi-order payment allocates incorrectly

## Suggested Negative Cases
- invalid merchant credentials
- integration offline
- partial payment > order balance
- refund on voided or unreconciled transaction
- payment against closed order without proper permission
