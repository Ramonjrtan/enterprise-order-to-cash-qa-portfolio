# Customer Portal and Integration Scenario

## Scenario ID
SCN-PORTAL-001

## Objective
Validate that customers can pay through the portal only when an integrated payment provider is enabled and configured.

## Steps
1. Enable payment integration
2. Confirm Pay Now appears in portal for unpaid order
3. Submit payment successfully
4. Verify portal confirmation
5. Verify internal payment record created
6. Disable payment integration
7. Reopen similar unpaid order in portal
8. Confirm Pay Now is hidden and customer needs assistance

## Expected Results
- portal behavior matches integration toggle
- payment posts to correct company/order
- internal balances and payment history update
