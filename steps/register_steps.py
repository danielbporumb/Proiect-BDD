from behave import *

@given('I am on the Register Page')
def step_impl(context):
    context.register_page.navigate_to_register_page()


@when('I click on the Register button')
def step_impl(context):
    context.register_page.click_on_register_button()


@then('First name error is displayed')
def step_impl(context):
    context.register_page.is_first_name_error_displayed()


@then('Last name error is displayed')
def step_impl(context):
    context.register_page.is_last_name_error_displayed()


@then('Email error is displayed')
def step_impl(context):
    context.register_page.is_email_error_displayed()


@then('Password error is displayed')
def step_impl(context):
    context.register_page.is_password_error_displayed()


@then('Confirm password error is displayed')
def step_impl(context):
    context.register_page.is_confirm_password_error_displayed()


@when('I select Male Gender')
def step_impl(context):
    context.register_page.select_male_radio_button()


@when('I enter "{first_name}" in the First name field')
def step_impl(context, first_name):
    context.register_page.set_first_name(first_name)


@when('I enter "{last_name}" in the Last name field')
def step_impl(context, last_name):
    context.register_page.set_last_name(last_name)


@when('I select Day "{day}" in the Date of birth field')
def step_impl(context, day):
    context.register_page.select_date_of_birth_day(day)


@when('I select Month "{month}" in the Date of birth field')
def step_impl(context, month):
    context.register_page.select_date_of_birth_month(month)


@when('I select Year "{year}" in the Date of birth field')
def step_impl(context, year):
    context.register_page.select_date_of_birth_year(year)


@when('I enter "{email}" in the Email field')
def step_impl(context, email):
    context.register_page.set_email_input(email)


@when('I enter "{company_name}" in the Company name field')
def step_impl(context, company_name):
    context.register_page.set_company_input(company_name)


@when('I uncheck the Newsletter field')
def step_impl(context):
    context.register_page.uncheck_newsletter_checkbox()


@when('I insert "{password}" in the Password field')
def step_impl(context, password):
    context.register_page.set_password_input(password)


@when('I insert "{password}" in the Confirm password field')
def step_impl(context, password):
    context.register_page.set_confirm_password_input(password)


@then('The successful registration message is displayed')
def step_impl(context):
    assert context.register_page.is_successful_registration_message_displayed()


@then('The successful registration message contains "{expected_message}"')
def step_impl(context, expected_message):
    assert expected_message in context.register_page.get_successful_registration_message_text()


@then('The Continue button is displayed')
def step_impl(context):
    assert context.register_page.is_continue_button_displayed()


@then('The registration error message is displayed')
def step_impl(context):
    assert context.register_page.is_registration_error_message_displayed()


@then('The registration error message contains "{expected_message}"')
def step_impl(context, expected_message):
    assert expected_message in context.register_page.get_registration_error_message_text()


@then('The email error text contains "{wrong_email}"')
def step_impl(context, wrong_email):
    assert wrong_email in context.register_page.get_email_error_text()


@then('The password error text contains "{password_error}"')
def step_impl(context, password_error):
    assert password_error in context.register_page.get_password_error_text()


@then('The Confirm password error text contains "{confirm_password_error}"')
def step_impl(context, confirm_password_error):
    assert confirm_password_error in context.register_page.get_confirm_password_error_text()