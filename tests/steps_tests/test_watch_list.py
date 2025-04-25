from pytest_bdd import scenarios, given, when, then

scenarios("../features/watch_list.feature")


@given("I am connected to the internet")
def connected_to_internet():
    print("connected to the internet...")


@given("I sign into a netflix account")
def sign_into_account():
    print("sign into account...")


@given("The account has an active subscription")
def account_has_active_subscription():
    print("account has active subscription...")


# Add to Watch list


@given("I am on the browse page")
def on_browse_page():
    print("on browse page...")


@given("I am on the browse page")
@given('I am previewing a movie "The Crown"')
def on_browse_page():
    print("on browse page...")


@given('"The Crown" is not in my watch list')
def movie_not_in_watch_list():
    print("movie not in watch list...")


@when("I open the watch list page")
@when('I click the "Remove from Watch list" button')
@when('I click the "Add to Watch list" button')
def click():
    print("click add to watch list button...")


@then("I should see all the added movies/shows")
@then('"The Crown" should no longer be in my watch list')
@then('"The Crown" should appear in my watch list')
def watch_list():
    print("watch list...")


# Remove from Watch list


@given("I am on my watch list page or browse page")
def on_watch_list_or_browse_page():
    print("on watch list or browse page...")


@given('"The Crown" is in my watch list')
def movie_in_watch_list():
    print("movie in watch list...")


# View Watch list


@given("I have added movies/shows to my watch list")
def add_movies_to_watch_list():
    print("added movies to watch list")
