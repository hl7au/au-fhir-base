### Usage Notes

**Profile specific implementation guidance:**
- See each Identifier profile page for guidance related to that identifier type.
- When populating the type:
    - *Medicare* coverage **SHOULD** be represented by sending the ActCode code "PUBLICPOL"
    - *Australian public hospital* coverage **SHOULD** be represented by sending the ActCode code "AUPUBHOSP"
    - *DVA* coverage **SHOULD** be represented by sending the ActCode code "VET"
    - *Private health insurance* coverage **SHOULD** be represented by sending the ActCode code "HIP"
    - *Workcover* coverage **SHOULD** be represented by sending the ActCode code "WCBPOL"
    - *Motor Accident* coverage  **SHOULD** be represented by sending the ActCode code "AUTOPOL"
    - *Private (self funded)* coverage **SHOULD** be represented by sending the Coverage SelfPay Codes code "pay"
    - *Concession* coverage, for example Health Care Card or Pensioner Concession Card, **SHOULD** be represented by sending the Coverage SelfPay Codes code "payconc"
