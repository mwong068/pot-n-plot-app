# Pot N' Plot

![GitHub repo size](https://img.shields.io/github/repo-size/mwong068/pot-n-plot-app)
![GitHub stars](https://img.shields.io/github/stars/mwong068/pot-n-plot-app)
![GitHub forks](https://img.shields.io/github/forks/mwong068/pot-n-plot-app)

## About

A virtual gardening site made entirely using Rails as a database and front end display. It is a full CRUD application built using the MVC architecture, Bootstrap for styling, and seeded with data from the Trefle API.


## Live Preview

[Pot N' Plot](http://pot-n-plot.herokuapp.com/)


### How it works

This application was built using Ruby on Rails. Please see the below sections on how to run the application on your local environment.


## Features

- Ruby on Rails application using [Rails](https://rubyonrails.org/)
- Bcrypt authentication using [Bcrypt](https://www.rubydoc.info/gems/bcrypt-ruby/3.1.5) gem

## How to use it

1. Create a clone of this repo using [GitHub's repository cloning](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github) functionality
2. Locate the folder in your system and follow the steps below to run the server

## Set up

### Requirements

- [Ruby on Rails](https://rubyonrails.org/)
- A Trefle.io Account - [sign up](https://trefle.io/)

### Trefle.io Account Settings

This application will need to be seeded with plant data from Trefle.io in order for the project to be viewed correctly. Before we begin, we need to collect an authentication token to run the application:

| Config&nbsp;Value | Description                                                                                                                                                  |
| :---------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Auth&nbsp;Token   | Used to authenticate - [create an account and obtain your token](https://trefle.io/registrations/new).                                                         |

### Local development

After the above requirements have been met:

1. Clone this repository and `cd` into it

```bash
git clone https://github.com/mwong068/pot-n-plot-app.git
cd pot-n-plot-app
```

2. Install dependencies

```bash
bundle install
```

3. Set your Trefle.io token

In the db/seeds.rb file, uncomment all of the code pertaining to the RestClient
and replace the token with the one you obtained from the Trefle.io website

```
RestClient.get("https://trefle.io/api/plants/?page=#{i}&token=[insert token here]")
```

4. Set up the database

```bash
rails db:create
rails db:migrate
rails db:seed
```

This will load information on over 200+ plants. Feel free to play around with the query parameters and seed any type of plant information you like!

4. Run the application

```bash
rails server
```

5. Navigate to [http://localhost:3000](http://localhost:3000)

After the server is running, you will be able to successfully create your own gardens and populate them with real plant data.
                                                       

## Resources

- [Self-referential relationships in Rails](https://medium.com/@miss.leslie.hsu/001-mutual-friendships-on-your-app-in-4-easy-steps-55cb27622585)

## Contributors

- [Daniel Wilder](https://github.com/dauncy)
- [Megan Wong](https://github.com/mwong068)


## Disclaimer

No warranty expressed or implied. Software is as is.