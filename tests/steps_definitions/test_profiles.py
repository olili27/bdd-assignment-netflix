from pytest_bdd import scenarios, given, when, then

scenarios("../features/profiles.feature")


@given("I am connected to the internet")
def connected_to_internet():
    print("connected to the internet...")


@given("I sign into a netflix account")
def sign_into_account():
    print("sign into account...")


@given("The account has an active subscription")
def account_has_active_subscription():
    print("account has active subscription...")


@then("I should see the list of profiles excluding the one I deleted")
@given("I see all profiles that exist")
@when("I see all profiles that exist")
@given("Multiple profiles exist")
def profiles():
    print("profiles...")


@when("I select a given profile")
@when("I select another profile")
@given("I choose a profile")
def select_profile():
    print("select a profile...")


# Switch Profile


@then("I should see content personalized for that profile on the browse page")
@given("I am on the browse page")
def on_browse_page():
    print("on browse page...")


@when("I confirm the delete action")
@when("I decide to delete this profile")
@when("Confirm to create the profile")
@when('I click "Add Profile"')
@when("I select another profile")
@when("I click a profiles button")
def click():
    print("click...")


# Create a New Profile


@then("I am redirected to the manage profiles page")
@then(
    "The new profile should be listed among the existing profiles on the manage profiles page"
)
@given("I am on the manage profiles page")
def on_manage_profiles_page():
    print("on manage profiles page...")


@when("I enter a name")
def enter_profile_name():
    print("enter profile name...")


@then("The profile should be deleted")
@then("A new profile should be created")
def profile():
    print("profile action...")


# Delete a Profile


@when("I am asked to confirm or cancel the delete action")
@when("There is an option to delete the profile")
@when("I am redirected to the preferences page for that selected profile")
def profile_details_page():
    print("profile details...")
