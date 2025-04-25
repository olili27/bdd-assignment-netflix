from pytest_bdd import scenarios, given, when, then

scenarios("../features/signin.feature")

@given("I am connected to the internet")
def connected_to_internet():
    print("connected to the internet...")


@given("I sign into a netflix account")
def sign_into_account():
    print("sign into account...")


@given("The account has an active subscription")
def account_has_active_subscription():
    print("account has active subscription...")


@given("I am on the signin page")
def on_signin_page():
    print("on signin page...")


# Successful Signin with a correct email and correct password


@when("I enter a correct email")
def enter_email():
    print("enter email...")


@when("I enter a correct password")
def enter_password():
    print("enter password...")


@when("I click send signin code button")
@when("I click the signin button")
def click():
    print("click signin button...")


@then("I am redirected to the browse page")
@then("I should be redirected to profiles page")
def redirect():
    print("redirecting...")


@then("I choose a profile")
def select_profile():
    print("select a profile...")


@then(
    "I see the dashboard with movies/shows in the different categories e.g recommendations, my list, continue watching"
)
def on_browse_page():
    print("on browse page...")


#  Unsuccessful Signin with a correct email and incorrect password


@when("I enter a correct email")
def enter_email():
    print("enter email...")


@when("I enter an incorrect password")
def enter_password():
    print("enter password...")


@then("I should remain on the signin page")
def stay_on_signin_page():
    print("stay on signin page...")


@then(
    "I should see a message `Incorrect password for {correct email}. You can use a sign-in code, reset your password or try again`"
)
def see_message():
    print("see message...")


# Successful Signin with a correct email and correct and valid signin code


@when("I enter a correct email")
def enter_email():
    print("enter email...")


@when("I click the signin button")
def click():
    print("click signin button...")


@then("I should receive an email with a signin code")
def receive_email():
    print("receive signin code via email...")


@then("I enter the correct and valid signin code that was sent")
def enter_signin_code():
    print("enter signin code...")


@then("I am redirected to the browse page")
def receive_email():
    print("receive signin code via email...")
