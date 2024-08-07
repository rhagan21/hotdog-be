# Hotdog question app

This is a sample app that receives answers to a question and stores them, and can return back the lastest 100 answers. It was built using Ruby on Rails for the backend and Postgres for the database.

## Todos
- [x] Create and seed postgres database
- [x] Create model for db
- [x] Create route and controller for the GET
- [x] Create route and controller for the POST
- [x] Backend validation - No empty answer, no "yes", "no", "I don't know", "That's fine"
- [x] Return custom answers
- [x] Limit answers to last 100 answers
- [x] Update this readmes

## Running the app
- Clone the github repo for the backend
- If you don't have Ruby 3.3.3, install it
- Run `rake db:seed` to seed the database. You can also add more seed data in `hotdot-api/db/seeds.rb`.
- Run `ruby s` to start the app
- It will run on localhost:3000. The Frontend will automatically point to localhost:3000 for the api. You can also hit the endpoints using Postman.
