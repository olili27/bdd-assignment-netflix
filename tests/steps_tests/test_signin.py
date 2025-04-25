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
