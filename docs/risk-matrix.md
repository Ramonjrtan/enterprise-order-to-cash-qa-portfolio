# Risk Matrix

| Area | Risk | Impact | Likelihood | Priority | Example Checks |
|---|---|---:|---:|---|---|
| Payment methods | Wrong method enabled or defaulted | High | Medium | P1 | method toggle, default behavior, order payment UI |
| Integrated gateway | Payment approved but not stored | Critical | Medium | P1 | API response, payment history, order balance |
| Reconciliation | Difference not zero but period closes | Critical | Low | P1 | preview, counted totals, close action |
| Accounting options | Unlocking invoiced order changes financial state | High | Medium | P1 | history, reports, reconciliation status |
| Customer portal | Pay Now visible when integration disabled | High | Medium | P1 | portal UI, payment attempt, feature toggle |
| Refunds | Partial refund exceeds captured amount | High | Medium | P1 | available funds validation |
| Multi-location | transaction posted to wrong location | High | Medium | P1 | location selection, summaries, reconciliation bucket |
| Reporting | report totals differ from underlying transactions | High | Medium | P1 | summary report vs payment table |
| Roles & permissions | unauthorized user can access financial setup | High | Medium | P1 | RBAC matrix validation |
