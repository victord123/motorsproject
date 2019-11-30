Given I navigate to the motors homepage
  As a customer I want to test that I can search for the price of cars in any post code

Scenario Outline: Customer can search for the price of a car in any postcode
Given I navigate to motors home page
And I select the "<Price>" option
And I enter "<PostCode>" in the PostCode text box
And I select "<Make>" in the Make dropdown
And I select "<Model>" in the Model dropdown
And I select "<MinPrice>" in the Min price drop down
And I select "<MaxPrice>" in the Max price drop down
And I click on Search button
Then a list of car "<Price>" in "<PostCode>" are displayed.

Examples:
|PostCode|Make|Model|MinPrice|MaxPrice|Price|
|M12BS|Mercedes-Benz|AClass|£10,000|£20,000|£13,134
|M181QB|Audi|A3|£10,000|   |£11,160|

Given I navigate to the motors homepage
As a customer I want to test that I can search for the monthly price of cars in any postcode

Scenario Outline: Customer can search for the monthly price of a car in any postcode
Given I navigate to motors home page
And I select the "<MonthlyCost>" option
And I enter "<PostCode>" in the PostCode text box
And I select "<Make>" in the Make dropdown
And I select "<Model>" in the Model dropdown
And I select "<MinPrice>" in the Min price drop down
  And i select "<Deposit>" in the Deposit drop down
And I select "<MaxPrice>" in the Max price drop down
  And i select the "<Term>" in the drop down
And I click on Search button
Then a list of car "<MonthlyPrice>" in "<PostCode>" are displayed.

Examples:
|PostCode|Make|Model|MinPrice|Deposit|MaxPrice|Term|MonthlyPrice|
|M12BS|Mercedes-Benz|AClass|£50|£500|£100|36 Months|£324 pm
|M13BE|Audi|A5|£50|£1000|£100|36 Months|£360 pm
|M187BR|Volkswagen|Golf|£50|£5000|£100|36 Months|£425 pm

Scenario Outline: Customer cannot search for the price of a car without entering postcode
Given I navigate to motors home page
And I select the "<Price>" option
And I enter "<PostCode>" in the PostCode text box
And I select "<Make>" in the Make dropdown
And I select "<Model>" in the Model dropdown
And I select "<MinPrice>" in the Min price drop down
And I select "<MaxPrice>" in the Max price drop down
And I click on Search button
Then a list of car "<Price>" in "<PostCode>" are displayed.

Examples:
|     |Audi|A3|£10,000|£20,000 |   |
|     |Mercedes-Benz|AClass|£13,000|£23,000 |     |

Scenario Outline: Customer cannot search for the monthly price of a car without entering postcode
Given I navigate to motors home page
And I select the "<MonthlyCost>" option
And I enter "<PostCode>" in the PostCode text box
And I select "<Make>" in the Make dropdown
And I select "<Model>" in the Model dropdown
And I select "<MinPrice>" in the Min price drop down
And I select "<Deposit>" in the Deposit drop down
And I select "<MaxPrice>" in the Max price drop down
And i select the "<Term>" in the drop down
And I click on Search button
Then a list of car "<MonthlyPrice>" in "<PostCode>" are displayed.

Examples:
|PostCode|Make|Model|MinPrice|Deposit|MaxPrice|Term|MonthlyPrice|
|    |Mercedes-Benz|AClass|£50|£1000|£500|24 Months|    |
|    |Audi|A3|£50|£500|£5000|36 Months|    |
|    |Volkswagen|Golf|£50|£3000|£300|36 Months|    |


