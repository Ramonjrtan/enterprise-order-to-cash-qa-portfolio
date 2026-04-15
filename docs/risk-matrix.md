# Risk Matrix

This matrix now reflects the stronger workbook-based coverage in `enterprise_order_to_cash_test_suite.xlsx`.

| Area | Risk | Impact | Likelihood | Priority | Workbook Coverage | Example Checks |
|---|---|---:|---:|---|---|---|
| Payment methods | Wrong method enabled or defaulted | High | Medium | P1 | `Payments_Recon` | method toggle, default behavior, order payment UI |
| Integrated gateway | Payment approved but not stored | Critical | Medium | P1 | `Payments_Recon`, `Integrations_Reports`, `End_to_End` | API response, payment history, order balance |
| Reconciliation | Difference not zero but period closes | Critical | Low | P1 | `Payments_Recon`, `End_to_End` | preview, counted totals, close action |
| Accounting options | Unlocking invoiced order changes financial state | High | Medium | P1 | `Financial_Config`, `Sales_Orders` | history, reports, reconciliation status |
| Customer portal | Pay Now visible when integration disabled | High | Medium | P1 | `End_to_End`, `customer-portal-integration.md` | portal UI, payment attempt, feature toggle |
| Refunds | Partial refund exceeds captured amount | High | Medium | P1 | `Payments_Recon`, `End_to_End` | available funds validation |
| Multi-location | transaction posted to wrong location | High | Medium | P1 | `Setup_Admin`, `End_to_End` | location selection, summaries, reconciliation bucket |
| Reporting | report totals differ from underlying transactions | High | Medium | P1 | `Integrations_Reports` | summary report vs payment table |
| Roles & permissions | unauthorized user can access financial setup | High | Medium | P1 | `Setup_Admin` | RBAC matrix validation |
| Pricing engine | incorrect cost or markup logic affects sell price | High | Medium | P1 | `Components_Pricing`, `Sales_Orders` | worksheet values, item pricing, persisted totals |
| Accounting sync | outbound data is incomplete or unbalanced | Critical | Medium | P1 | `Integrations_Reports` | summary sync, detail sync, mapped accounts |
| Data integrity | company, order, payment, and report records break linkage | Critical | Medium | P1 | `End_to_End` | cross-module traceability and lifecycle consistency |

## Highest-Demo Areas for Interviews

If walking a recruiter or hiring manager through the portfolio, focus on these first:

1. `Payments_Recon` for payment risk and reconciliation control
2. `End_to_End` for business lifecycle validation
3. `Integrations_Reports` for backend and accounting confidence
4. `Setup_Admin` for permissions and control risk
