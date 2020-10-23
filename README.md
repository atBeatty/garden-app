
Garden-app is a Ruby library for storing a collection of User's plants. It is a simple app built with a Sinatra framework.

## Installation

Fork the repository
In your terminal, map to the fork cd
Use the bundle-install prior to using garden-app.

```
bundle install
```

Run a migration to ensure database is up to date.

```
rake db:migrate
```

Seed the database with seed data.

```
rake db:seed
```

Then use shotgun to run a local host for the app.

```
shotgun
```

Go to https://localhost:9393 

Have fun!



## Comments
This app is built using a Sinatra WAF. The relationships in place are that USERS have_many PLANTS and PLANTS belong_to a USER.
It uses a gem called `bcrypt` to authenticate the user and validate their information.

## Vision
In the idea case scenario and in the long term, this app will allow users to interact more with the database. The current version has a field and a separate migration for a _comments field_. With this we can start to build out a PLANTS has_many COMMENTS and really shine the light on how social plant ownership can be. Also, in the future I want to be able to set up the relationships as follows, adding _Garden class_ to the database:
    *User has_many gardens
    *Garden has_many plants
    *Plant belong_to garden

    *User has_many :plants, through: :gardens


The app needs a way for imagery to be incorporated. The idea is to have users take photos of the way they "care" for their gardens.

Include more user relationship visuals and metrics within the plants feed.

## Roadmap

### HOME
This takes user back to root page and uses session variables to determine if logged in.

### PLANTS
This is the plants index link to all plants.

### MY GREENHOUSE
This is the page listing the user's collection of plants.

### ABOUT
Work in progress. This will have information on app, it is currently acting as a placeholder for some of soil sample information.


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


