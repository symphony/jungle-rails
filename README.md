# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

### Homepage 

<img alt="Screenshot of Jungle's homepage" src="docs/01-homepage.png?raw=true" name="Jungle Homepage" width="1000"></img>

### Product List

<img alt="Screenshot of product list" src="docs/02-product-list.png?raw=true" name="Product List" width="1000"></img>

### Product View

<img alt="Screenshot of individual product view" src="docs/03-product-view.png?raw=true" name="Product View" width="1000"></img>

### Order Confirmation

<img alt="Screenshot of order confirmation page" src="docs/order-confirmation.png?raw=true" name="Order Confirmation" width="600"></img>

### Admin Dashboard

<img alt="Screenshot of admin's product dashboard" src="docs/admin-dashboard.png?raw=true" name="Admin Dashboard" width="600"></img>

---

## Setup

**Download or Clone the Project**  
`git clone git@github.com:symphony/jungle-rails.git && cd jungle-rails`

1. Run `bundle install` to install gem dependencies
2. Run `npm i` to install node dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `rails db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `rails s` to start the server
10. Visit http://localhost:3000 in your browser to view the app

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Troubleshooting

Admin username is `Jungle` and password `book`

Use Credit Card # `4111 1111 1111 1111` and valid expiry date for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

Unit tests can be run using `bin/rspec`

Cypress E2E testing requires XServer to be running on your host

Cypress tests can be run with `rails cypress:open`

## Ruby Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Rspec

## Node Dependencies

    @rails/actioncable
    @rails/activestorage
    @rails/ujs
    @rails/webpacker
    turbolinks
    webpack
    webpack-cli
    cypress
    webpack-dev-server