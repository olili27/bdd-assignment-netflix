# BDD SAMPLE EXERCISE

## About the Exercise
    I picked Netflix.com as my application to test for its behavior

### Features at test

    I identified the:
        - signin
        - search for a movie/show
        - profiles
        - watch list
        - video playback 
    as my features under test

### Scenarios for Feature
    Signin
        - Successful Signin with a correct email and correct password
        - Unsuccessful Signin with a correct email and incorrect password
        - Successful Signin with a correct email and correct and valid signin code

    Search
        - Search For a movie/show that exists on netflix
        - Search For a movie/show that does not exist on netflix
        - Search is Case-Insensitive

    Profiles
        - Switch Profile
        - Create a New Profile
        - Delete a Profile

    Watch List
        - Add to Watch list
        - Remove from Watch list
        - View Watch list
    
    Video Playback
        - Pause The Movie
        - Play The Movie
        - Seek Forward
    
## Project Setup
    The project was kick started from a virtual environment. It is advised you do the same when you want to try out the project. The project was built using python 3.11.5. The BDD tests are done using pytest and pytest-bdd
    
    From the root of th project directory/folder
        To create a virtual environment run `python3 -m venv venv`
        To activate the virtual environment 
            - on unix based system run `source venv/bin/activate`
            - on windows run `venv\Scripts\activate
        To deactivate the virtual environment run `deactivate`
    
        The dependencies for the project can be installed by running `pip install -r requirements.txt"

