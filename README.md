# README

Simple demo rails app. It has a demo controller that shows successful access to the database.

## Setup

    git clone https://github.com/tongueroo/demo-rails
    cd demo-rails
    # edit config/database.yml with the desired database endpoint
    bundle
    rails db:create db:migrate
    rails server # start server

Now you can should be able to go to the url endpoints to see the demo page.

* http://localhost:3000
* http://localhost:3000/info # works too, same as homepage
* http://localhost:3000/books # demo CRUD with books

Here's the relevant code:

* [app/controllers/demo_controller.rb](app/controllers/demo_controller.rb)
* [app/views/demo/index.html.erb](app/views/demo/index.html.erb)
* [app/controllers/books_controller.rb](app/controllers/books_controller.rb)
