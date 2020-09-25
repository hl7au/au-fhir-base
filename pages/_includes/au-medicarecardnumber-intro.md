**AU Medicare Card Number**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a Medicare card[<sup>[1]</sup>](https://www.servicesaustralia.gov.au/individuals/services/medicare/medicare-card){:target="_blank"} number in an Australian context. This definition supports sending either the 10 digit Medicare card number or the 11 digit number[<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"} (includes the Individual Reference Number (IRN)).

A Medicare card is provided to individuals who are enrolled in Medicare[<sup>[1]</sup>](https://www.servicesaustralia.gov.au/individuals/medicare){:target="_blank"}.

#### Usage Notes

The 10 digit format is supported as some systems do not support the 11 digit Medicare card number. 

The 10 digit Medicare card number is not sufficient to uniquely identify the number associated with an individual on a Medicare card as a card may include up to 9 individuals. If required, profiles can constrain this profile further to restrict usage to 11 digits only as desired.

Medicare card numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

**Examples**

[Patient with IHI, Medicare card, and health care card](Patient-example0.html)

[Patient with no birth date, and eligible for Closing the Gap registration](Patient-example2.html)

[Patient Sarah Simmons linked to related person Sarah Simmons](Patient-example5.html)

[Sarah Simmons as the mother of Suzanne Simmons](RelatedPerson-example2.html)

[Bill Simmons as a father of Suzanne Simmons](RelatedPerson-example3.html)


