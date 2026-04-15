# Enterprise Order-to-Cash QA Portfolio

Senior QA portfolio project focused on end-to-end validation of an ERP/CRM-style business platform covering CRM, estimates and orders, payments, accounting, reconciliation, customer portal, and integrations.

## Purpose

This repo demonstrates how to test a transaction-heavy SaaS platform where data flows across multiple modules:

Customer Management -> Estimate -> Order -> Payment -> Accounting -> Reconciliation -> Reporting

It is built as a realistic QA portfolio using public product-style documentation patterns and a risk-based testing approach.

## What Was Updated

This repo now aligns with the latest executable Excel test suite:

- `enterprise_order_to_cash_test_suite.xlsx`
- **84 manual test cases**
- **8 execution sheets + 1 Summary sheet**
- status-driven execution tracking with summary KPIs
- sanitized and safe for public portfolio use

## Current Functional Coverage

### Workbook Module Coverage
- **Setup_Admin**: 10 cases
- **Customers_CRM**: 10 cases
- **Sales_Orders**: 12 cases
- **Components_Pricing**: 9 cases
- **Financial_Config**: 10 cases
- **Payments_Recon**: 14 cases
- **Integrations_Reports**: 11 cases
- **End_to_End**: 8 cases

### Business Scope Covered
- CRM: companies, contacts, notes, flags
- Sales: estimates, orders, line items, statuses, boards, recurring templates
- Financial setup: payment terms, chart of accounts, GL mapping, pricing, rounding
- Payments: cash, check, wire transfer, custom methods, integrated credit cards
- Reconciliation: daily reconciliation, counted vs system totals, sync readiness
- Customer portal: customer sign-in, portal payments, Pay Now flow
- Integrations: integrated payment gateways, accounting systems, tax services, and APIs
- Reporting and documents: filters, drill-down, available reports, generated documents

## Repo Structure

- `docs/`
  - test-strategy.md
  - risk-matrix.md
  - requirements-traceability-matrix.csv
- `test-scenarios/`
  - e2e-workflow.md
  - payments-reconciliation.md
  - customer-portal-integration.md
- `test-cases/`
  - master_test_cases.csv
  - smoke_suite.csv
  - regression_suite.csv
- `api-tests/`
  - enterprise_payments_postman_collection.json
- `data-validation/`
  - reconciliation_checks.sql
  - reporting_validation_queries.sql
- `sample-data/`
  - sample_orders.csv
  - sample_payments.csv

## Recommended Walkthrough Order

1. Start with `docs/test-strategy.md`
2. Review `docs/risk-matrix.md`
3. Open `test-scenarios/e2e-workflow.md`
4. Use the Excel suite `enterprise_order_to_cash_test_suite.xlsx` as the primary execution artifact
5. Cross-check legacy CSV suites in `test-cases/`
6. Review the Postman collection in `api-tests/`
7. Review SQL checks in `data-validation/`

## High-Value E2E Flow

1. Configure locations, roles, payment terms, accounting options, and enabled payment methods
2. Create company and contact
3. Create estimate with line items
4. Convert estimate to order
5. Take full or partial payment
6. Validate payment method, deposit account, and order balance
7. Reconcile payments for the location
8. Validate accounting sync readiness and report output

## Strong QA Angles Demonstrated

- end-to-end system validation
- financial data integrity
- integrated vs non-integrated payment behavior
- reconciliation accuracy
- risk-based regression coverage
- API, UI, and backend validation alignment
- execution-ready manual test management using a structured Excel suite

## Excel Suite Notes

The updated workbook is now the strongest test-case asset for this portfolio.

It includes:
- a summary sheet for overall execution status
- module-based sheets for focused testing
- reusable priority and status structure
- stronger negative coverage for payments, reconciliation, roles, integrations, and reporting
- critical end-to-end flows that support recruiter demos and interview walkthroughs

## Disclaimer

This is a portfolio simulation created for QA demonstration and interview discussion. It is generic, does not contain internal company content, and does not include confidential business or customer data.
