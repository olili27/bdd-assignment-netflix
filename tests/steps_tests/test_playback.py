from pytest_bdd import scenarios, given, when, then

scenarios("../features/playback.feature")


@given("I am connected to the internet")
def connected_to_internet():
    print("connected to the internet...")


@given("I sign into a netflix account")
def sign_into_account():
    print("sign into account...")


@given("The account has an active subscription")
def account_has_active_subscription():
    print("account has active subscription...")


@given("I choose a profile")
def select_profile():
    print("select a profile...")


@given("I am on the browse page")
def on_browse_page():
    print("on browse page...")


@given("I choose a movie to watch")
def choose_movie():
    print("choose movie to watch...")


# Pause The Movie


@then("The movie should start playing")
@then("The movie should stop playing")
@given("The movie is playing")
def movie_playing():
    print("movie playing...")


@when("I click the forward button")
@when("I click the play button")
@when("I click the pause button")
def click():
    print("click pause button...")


# Play The Movie


@given("The movie is paused")
def movie_paused():
    print("movie paused...")


@when("I enter a correct email")
def enter_email():
    print("enter email...")


# Seek forward


@given("The movie is paused or playing")
def movie_paused_or_playing():
    print("movie paused or playing...")


@then("The playback should jump ahead by 10 seconds")
def jump():
    print("jumping...")
