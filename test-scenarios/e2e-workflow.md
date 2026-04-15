# End-to-End Workflow Scenario

## Scenario ID
SCN-E2E-001

## Title
Company to Payment to Reconciliation

## Objective
Validate the complete workflow from CRM setup through order payment and reconciliation.

## Related Workbook Coverage

Primary workbook sheet:
- `End_to_End`

Supporting workbook sheets:
- `Customers_CRM`
- `Sales_Orders`
- `Financial_Config`
- `Payments_Recon`
- `Integrations_Reports`

Most relevant test cases:
- `TC-E2E-001` full order-to-cash flow from company setup through reconciliation close
- `TC-E2E-004` multi-location transaction posts and reports against correct location
- `TC-SAL-002` estimate-to-order conversion preserves data
- `TC-PAY-003` integrated payment approval reduces balance correctly
- `TC-PAY-012` reconciliation cannot close when differences remain
- `TC-INT-003` accounting summary sync exports balanced totals

## Preconditions
- payment terms exist
- at least one deposit account exists
- integrated credit card method enabled
- employee has access to CRM, Sales, and Accounting
- reporting and reconciliation baseline is known

## Steps
1. Create a company record
2. Create a contact under that company
3. Create an estimate with two line items and applicable tax
4. Convert estimate to order
5. Confirm customer, location, totals, tax, and status persisted
6. Enter partial payment using integrated credit card
7. Verify order balance decreased correctly
8. Enter remaining payment using same or another allowed method
9. Open payment history and confirm both transactions visible
10. Go to reconciliation preview for the location
11. Validate payment totals by method
12. Enter counted totals
13. Confirm differences are 0.00 and reconciliation can be completed
14. Validate report totals and payment summaries
15. If accounting sync is in scope, validate outbound totals and mappings

## Expected Results
- no data loss during estimate-to-order conversion
- payment records linked to correct company and order
- deposit account and payment method captured correctly
- reconciliation period includes new transactions
- close action blocked unless differences are zero
- reporting matches transaction history
- accounting sync data remains balanced and traceable
