# Customer Portal and Integration Scenario

## Scenario ID
SCN-PORTAL-001

## Objective
Validate that customers can pay through the portal only when an integrated payment provider is enabled and configured.

## Related Workbook Coverage

Primary workbook alignment:
- `End_to_End`
- `Integrations_Reports`
- `Payments_Recon`

Most relevant test cases:
- `TC-E2E-002` Verify customer portal invitation to successful portal payment updates internal records
- `TC-PAY-010` Verify portal payment visibility follows integration enablement rules
- `TC-INT-001` Verify gateway connectivity test succeeds with valid credentials
- `TC-INT-002` Verify declined or timed-out gateway response does not create duplicate payment records

## Steps
1. Enable payment integration
2. Confirm Pay Now appears in portal for unpaid order
3. Submit payment successfully
4. Verify portal confirmation
5. Verify internal payment record created
6. Disable payment integration
7. Reopen similar unpaid order in portal
8. Confirm Pay Now is hidden or blocked and customer needs assistance

## Expected Results
- portal behavior matches integration toggle
- payment posts to correct company/order
- internal balances and payment history update
- no duplicate payment record appears during retries or failures
- customer-facing and internal status remain consistent
