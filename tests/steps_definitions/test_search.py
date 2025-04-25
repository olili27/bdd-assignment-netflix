from pytest_bdd import scenarios, given, when, then

scenarios("../features/search.feature")


@given("I am connected to the internet")
def connected_to_internet():
    print("connected to the internet...")


@given("I sign into a netflix account")
def sign_into_account():
    print("sign into account...")


@given("The account has an active subscription")
def account_has_active_subscription():
    print("account has active subscription...")


@given("I am on the browse page")
def on_browse_page():
    print("on browse page...")


# Search For a movie/show that exists on netflix


@given('A show "Breaking Bad" is available on netflix')
@given('A show "Stranger things" is available on netflix')
def show_is_available():
    print("show is available...")


@when('I search for "breaking Bad"')
@when('I search for "RandomNonexistentShow"')
@when('I search for "Stranger Things"')
def search():
    print("searching...")


@then('I should other movies/shows related to the word "breaking bad"')
@then('I should see "Breaking Bad" in the results')
@then('I should see other movies/shows related to the word "RandomNonexistentShow"')
@then('I should see other movies/shows related to the word "Stranger things"')
@then('I should see "Stranger Things" in the results as the first choice')
def search_results():
    print("search results...")


# Search For a movie/show that does not exist on netflix


@given('A movie "RandomNonexistentShow" is not available on netflix')
def show_is_not_available():
    print("show is not available...")


@given('"The Crown" is in my watch list')
def movie_in_watch_list():
    print("movie in watch list...")

