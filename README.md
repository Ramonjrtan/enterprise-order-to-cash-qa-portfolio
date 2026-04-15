# Enterprise Order-to-Cash QA Portfolio

Senior QA portfolio project focused on end-to-end validation of a ERP/CRM-style business platform covering CRM, estimates and orders, payments, accounting, reconciliation, customer portal, and integrations.

## Purpose

This repo demonstrates how to test a transaction-heavy SaaS platform where data flows across multiple modules:

Customer Management -> Estimate -> Order -> Payment -> Accounting -> Reconciliation -> Reporting

It is built as a realistic QA portfolio using product documentation patterns from public product-style support articles and a risk-based testing approach.

## Scope Covered

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

## High-Value E2E Flow

1. Configure payment terms, accounting options, and enabled payment methods
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

## Suggested Demo Walkthrough

- Start with `docs/test-strategy.md`
- Review `test-scenarios/e2e-workflow.md`
- Open `test-cases/master_test_cases.csv`
- Run the Postman collection in `api-tests/`
- Review SQL checks in `data-validation/`

## Disclaimer

This is a portfolio simulation created for QA demonstration and interview discussion. It is generic, does not contain internal company content, and does not include confidential business or customer data.
