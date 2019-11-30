Given I navigate to the motors homepage
As a customer I want to test that I can sign into my motors.co.uk account

Scenario Outline: Customer can sign into account
Given I navigate to motors home page
And I select the "<SignIn>" option
And I enter "<EmailAddress>" in the Email address text box
And I enter "<Password>" in the Password text box
And I click on "<SignIn>" button
Then I am taken to My Garage page
  Examples:
  |EmailAddress|Password|SignInSuccessful
  |adamjames231@yahoo.com|AdamJames123|SignInSuccessful|
  |Hillaryclinton12@yahoo.co.uk|HillaryWins123|SignInSuccessful|

Scenario Outline: Customer cannot sign into account if email address is valid but password is invalid
Given I navigate to motors home page
And I select the "<SignIn>" option
And I enter an invalid "<EmailAddress>" in the Email address text box
And I enter "<Password>" in the Password text box
And I click on "<SignIn>" button
Then I get an error message for "<Password>"
  Examples:
  |Fakeemail123@fakeemail.com|Realpassword|
  |Fakeemail321@Fake.com|PasswordReal|


Scenario Outline: Customer cannot sign into account if email address is valid but password is invalid
Given I navigate to motors home page
And I select the "<SignIn>" option
And I enter an invalid "<EmailAddress>" in the Email address text box
And I enter "<Password>" in the Password text box
And I click on "<SignIn>" button
Then I get an error message for "<Password>"
  Examples:
  |Adamgreen123@yahoo.co.uk|Realpassword1|
  |Sophiabegum@gmail.com|RealPassword3|

