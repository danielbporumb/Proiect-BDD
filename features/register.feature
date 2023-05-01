Feature: Test the functionality of the Register Page

  Background:
    Given I am on the Register Page

  @empty_registration
  Scenario: Check that trying to register without completing any field displayes error fields
    When I click on the Register button
    Then First name error is displayed
    Then Last name error is displayed
    Then Email error is displayed
    Then Password error is displayed
    Then Confirm password error is displayed

  @complete_registration
  Scenario: Check that registration is successfull when completing all the necessary fields
    When I select Male Gender
    When I enter "Porumb" in the First name field
    When I enter "Daniel" in the Last name field
    When I select Day "10" in the Date of birth field
    When I select Month "February" in the Date of birth field
    When I select Year "1994" in the Date of birth field
    When I enter "porumbd@yahoo.com" in the Email field
    When I enter "IT Factory" in the Company name field
    When I uncheck the Newsletter field
    When I insert "secretpassword" in the Password field
    When I insert "secretpassword" in the Confirm password field
    When I click on the Register button
    Then The successful registration message is displayed
    Then The successful registration message contains "Your registration completed"
    Then The Continue button is displayed

  @same_complete_registration
  Scenario: Check that registration twice with the same data gives an email error
    When I select Male Gender
    When I enter "Porumb" in the First name field
    When I enter "Daniel" in the Last name field
    When I select Day "10" in the Date of birth field
    When I select Month "February" in the Date of birth field
    When I select Year "1994" in the Date of birth field
    When I enter "porumbd@yahoo.com" in the Email field
    When I enter "IT Factory" in the Company name field
    When I uncheck the Newsletter field
    When I insert "secretpassword" in the Password field
    When I insert "secretpassword" in the Confirm password field
    When I click on the Register button
    Then The registration error message is displayed
    Then The registration error message contains "The specified email already exists"

  @wrong_email_format
  Scenario: Check that entering a wrong email format gives an email error message
    When I select Male Gender
    When I enter "Porumb" in the First name field
    When I enter "Daniel" in the Last name field
    When I select Day "10" in the Date of birth field
    When I select Month "February" in the Date of birth field
    When I select Year "1994" in the Date of birth field
    When I enter "email" in the Email field
    When I enter "IT Factory" in the Company name field
    When I uncheck the Newsletter field
    When I insert "secretpassword" in the Password field
    When I insert "secretpassword" in the Confirm password field
    When I click on the Register button
    Then The email error text contains "Wrong email"

   @wrong_password_format
   Scenario: Check that entering a password that doesn't meet the website rules gives the correct error message
    When I select Male Gender
    When I enter "Porumb" in the First name field
    When I enter "Daniel" in the Last name field
    When I select Day "10" in the Date of birth field
    When I select Month "February" in the Date of birth field
    When I select Year "1994" in the Date of birth field
    When I enter "email" in the Email field
    When I enter "IT Factory" in the Company name field
    When I uncheck the Newsletter field
    When I insert "pass" in the Password field
    When I insert "pass" in the Confirm password field
    When I click on the Register button
    Then The password error text contains "must have at least 6 characters"


  @wrong_confirm_password
  Scenario: Check that entering a different password in the Confirm password field gives the correct error message
    When I select Male Gender
    When I enter "Porumb" in the First name field
    When I enter "Daniel" in the Last name field
    When I select Day "10" in the Date of birth field
    When I select Month "February" in the Date of birth field
    When I select Year "1994" in the Date of birth field
    When I enter "email" in the Email field
    When I enter "IT Factory" in the Company name field
    When I uncheck the Newsletter field
    When I insert "secretpassword" in the Password field
    When I insert "passwordsecret" in the Confirm password field
    When I click on the Register button
    Then The Confirm password error text contains "The password and confirmation password do not match."