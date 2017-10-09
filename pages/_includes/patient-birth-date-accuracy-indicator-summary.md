Australian extension for Patient Birth Date Accuracy Indicator contains the following constraints on Patient message where an extension of Patient Birth Date Accuracy Indicator is provided.

1. The string representation of the date of birth should be in a recognisable date format.
1. Where the accuracy indicator states that a day is unknown, the string representation of the date would have "00" for the day.
1. Where the accuracy indicator states that a month is unknown, the string representation of the date would have "00" for the month
1. Where the accuracy indicator states that a year is unknown, the string representation of the date would have "0000" for the year
1. Where the accuracy indicator states that a day is estimated or accurate, the string representation of the date would not have "00" for the day.
1. Where the accuracy indicator states that a month is estimated or accurate, the string representation of the date would not have "00" for the month.
1. Where the accuracy indicator states that a year is estimated or accurate, the string representation of the date would not have "0000" for the year.
