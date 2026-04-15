# Test Strategy

## Objective

Validate a ERP/CRM-style enterprise workflow platform that combines CRM, estimating, order management, payment processing, accounting setup, reconciliation, customer portal access, and external integrations.

## Test Objectives

- verify business-critical workflows work end to end
- ensure financial calculations are correct and traceable
- ensure payment transactions are recorded against the correct company, order, location, and deposit account
- ensure reconciliation blocks closure when counted totals do not match system totals
- ensure portal payments and integrated payment methods behave as expected
- ensure changes to closed or invoiced orders are controlled and do not break reporting integrity

## In Scope

### Functional
- company and contact creation
- estimate and order creation
- line items, fees, statuses, and tags
- payment method configuration
- partial and full payments
- refunds
- reconciliation
- accounting options
- customer portal payments
- payment integrations

### Non-Functional
- role-based access
- audit/history visibility
- financial data consistency
- regression safety
- error handling and recoverability

## Key Risks

1. payment accepted but order balance not updated
2. integrated payment captured but not reconciled correctly
3. unlocking invoiced or closed orders causes reporting inconsistency
4. wrong deposit account mapping for payment method
5. portal payment visible to customer but missing internally
6. partial refund exceeds available funds
7. multi-location payment posted to wrong location

## Test Levels

- smoke: critical path only
- functional: module-level behavior
- integration: gateway/accounting/portal interactions
- regression: end-to-end and cross-module scenarios
- data validation: DB/report level consistency
- UAT support: business rules and workflow confirmation

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

## Exit Criteria

- no Sev1 or Sev2 defect open on critical workflows
- smoke suite pass >= 95%
- all critical reconciliation and payment scenarios passed
- known limitations documented
