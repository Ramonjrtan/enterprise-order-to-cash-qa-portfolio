# Payments and Reconciliation Scenarios

## Coverage
The workbook now gives this area the deepest functional coverage in the portfolio.

Primary workbook sheet:
- `Payments_Recon` with **14 test cases**

Related supporting sheets:
- `Financial_Config`
- `Integrations_Reports`
- `End_to_End`

## Included Areas
- built-in payment methods
- custom payment methods
- integrated credit card methods
- manual non-integrated card entry
- portal payments
- full and partial refunds
- multi-order payment behavior
- daily reconciliation and close control
- deposit account mapping
- failure and retry handling

## High-Risk Scenarios
1. Credit Card (Integrated) payment succeeds but order balance stays unchanged
2. Credit Card (Non-integrated) manually entered with wrong amount or missing audit reference
3. Portal Pay Now button visible even when integration disabled
4. Partial refund greater than captured amount
5. Reconciliation closes while Difference != 0.00
6. Custom payment method mapped to wrong deposit account
7. Multi-order payment allocates incorrectly
8. Timeout or decline causes duplicate payment attempt records

## Workbook Test Cases to Highlight
- `TC-PAY-002` custom payment method posts to configured deposit account
- `TC-PAY-003` integrated card payment approval creates payment and reduces balance
- `TC-PAY-004` manual non-integrated card entry requires reference or audit note
- `TC-PAY-008` refund cannot exceed available captured amount
- `TC-PAY-010` portal payment visibility follows integration rules
- `TC-PAY-012` reconciliation cannot close with unresolved difference
- `TC-PAY-013` multi-order payment allocates correctly
- `TC-PAY-014` reconciliation close records balanced results and history

## Suggested Negative Cases
- invalid merchant credentials
- integration offline
- partial payment > order balance
- refund on voided or unreconciled transaction
- payment against closed order without proper permission
- retry after gateway timeout creates duplicate risk

## Validation Depth
For this area, the strongest demo flow is:

1. execute the `Payments_Recon` workbook sheet
2. validate request and response behavior using the Postman collection
3. cross-check stored values or summaries using SQL queries
4. complete one business-proof flow in the `End_to_End` sheet
