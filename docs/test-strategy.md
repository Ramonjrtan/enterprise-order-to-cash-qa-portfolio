# Test Strategy

## Objective

Validate an ERP/CRM-style enterprise workflow platform that combines CRM, estimating, order management, payment processing, accounting setup, reconciliation, customer portal access, and external integrations.

## Primary Execution Asset

The primary manual execution artifact for this portfolio is:

- `enterprise_order_to_cash_test_suite.xlsx`

Workbook structure:
- `Summary`
- `Setup_Admin`
- `Customers_CRM`
- `Sales_Orders`
- `Components_Pricing`
- `Financial_Config`
- `Payments_Recon`
- `Integrations_Reports`
- `End_to_End`

Current coverage in the workbook:
- 84 total test cases
- 8 functional execution sheets
- 1 summary sheet with execution KPI tracking

## Test Objectives

- verify business-critical workflows work end to end
- ensure financial calculations are correct and traceable
- ensure payment transactions are recorded against the correct company, order, location, and deposit account
- ensure reconciliation blocks closure when counted totals do not match system totals
- ensure portal payments and integrated payment methods behave as expected
- ensure changes to closed or invoiced orders are controlled and do not break reporting integrity
- ensure integration failures do not create duplicate or orphaned financial records

## In Scope

### Functional
- company and contact creation
- estimate and order creation
- line items, fees, statuses, and tags
- payment method configuration
- partial and full payments
- refunds and credits
- reconciliation
- accounting options and GL mapping
- customer portal payments
- payment and accounting integrations
- reporting and drill-down validation

### Non-Functional
- role-based access
- audit/history visibility
- financial data consistency
- regression safety
- error handling and recoverability

## Module-to-Workbook Coverage

| Module | Workbook Sheet | Case Count | Focus |
|---|---|---:|---|
| Setup and Admin | `Setup_Admin` | 10 | locations, permissions, notifications, role control |
| Customers and CRM | `Customers_CRM` | 10 | companies, contacts, notes, duplicate control |
| Sales and Orders | `Sales_Orders` | 12 | estimates, orders, statuses, pricing persistence |
| Components and Pricing | `Components_Pricing` | 9 | materials, labor, machines, cost and price logic |
| Financial Setup | `Financial_Config` | 10 | terms, GL mapping, taxes, rounding, defaults |
| Payments and Reconciliation | `Payments_Recon` | 14 | payment methods, integrated payments, refunds, close control |
| Integrations and Reporting | `Integrations_Reports` | 11 | gateway behavior, accounting sync, reports, exports |
| End to End | `End_to_End` | 8 | complete lifecycle validation across modules |

## Key Risks

1. payment accepted but order balance not updated
2. integrated payment captured but not reconciled correctly
3. unlocking invoiced or closed orders causes reporting inconsistency
4. wrong deposit account mapping for payment method
5. portal payment visible to customer but missing internally
6. partial refund exceeds available funds
7. multi-location payment posted to wrong location
8. declined or timed-out gateway response creates duplicate records
9. accounting sync exports incomplete or unbalanced totals

## Test Levels

- smoke: critical path only
- functional: module-level behavior
- integration: gateway/accounting/portal interactions
- regression: end-to-end and cross-module scenarios
- data validation: DB/report level consistency
- UAT support: business rules and workflow confirmation

## Execution Approach

- use the `Summary` sheet to monitor overall progress and execution health
- execute by business module using the functional sheets
- prioritize `Critical` and `High` scenarios first
- use `End_to_End` sheet for release-readiness confidence
- validate failed payment and reconciliation scenarios against Postman and SQL artifacts where relevant
- use legacy CSV files only as supplemental lightweight references

## Environments

- QA / staging with sample companies, orders, and payment methods
- test merchant integration or mocked payment endpoints
- optional accounting sandbox for sync validation

## Entry Criteria

- required configuration available
- payment methods enabled
- representative user roles created
- sample master data loaded
- test gateway credentials or mocks configured
- reporting and reconciliation data reset or known baseline established

## Exit Criteria

- no Sev1 or Sev2 defect open on critical workflows
- smoke suite pass >= 95%
- all critical reconciliation and payment scenarios passed
- end-to-end flow scenarios completed with expected outcomes
- known limitations documented
