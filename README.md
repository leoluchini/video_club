# Video Club

This template comes with:
- Schema
  - Films table
  - Episodes table
  - Purchases table
  - Users table
- Endpoints
  - Get films (movies and sesions)
  - Get movies
  - Get sesions
  - Get libraries
  - Create purchases
- Rspec tests
- Code quality tools

## Ruby version
  `2.6.5`

## How to use

1. Clone this repo
1. Install PostgreSQL in case you don't have it
1. Create your `database.yml` and `application.yml` file
1. `bundle install`
1. `rails db:create db:migrate`
1. `rspec` and make sure all tests pass
1. `rails s`
1. You can now try your REST services!

## Gems

- [Factory Bot](https://github.com/thoughtbot/factory_bot) for testing data
- [Faker](https://github.com/stympy/faker) for generating test data
- [Jbuilder](https://github.com/rails/jbuilder) for json views
- [Puma](https://github.com/puma/puma) for the server
- [RSpec](https://github.com/rspec/rspec) for testing
- [Rubocop](https://github.com/bbatsov/rubocop/) for ruby linting
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) adds other testing matchers
- [Simplecov](https://github.com/colszowka/simplecov) for code coverage
