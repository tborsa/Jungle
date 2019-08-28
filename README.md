# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.
This was a project where I was given a skelton of a ruby app and I added features such as login and products.

![home page](https://github.com/kir-/jungle-rails/blob/master/img/Screen%20Shot%202019-08-28%20at%202.58.47%20PM.png?raw=true)
![login page](https://github.com/kir-/jungle-rails/blob/master/img/Screen%20Shot%202019-08-28%20at%202.58.55%20PM.png?raw=true)
![sign up page](https://github.com/kir-/jungle-rails/blob/master/img/Screen%20Shot%202019-08-28%20at%202.59.06%20PM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
