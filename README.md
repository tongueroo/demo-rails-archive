# README

Simple demo rails app. It has a demo controller that shows successful access to the database.

## Rails Setup

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

## Jets Afterburner

To deploy this Rails app to AWS Lambda you can use [Jets Afterburner](http://rubyonjets.com/docs/rails-support/).

    cd demo-rails
    gem install jets # outside of Gemfile
    mkdir -p .jets/app
    vim .jets/app/.env # add your env variables
    jets deploy


Here's the blog article that covers it: [Jets Afterburner: Serverless Rails on AWS Lambda in 5 Minutes](https://blog.boltops.com/2018/12/21/jets-afterburner-serverless-rails-on-aws-lambda-in-5-minutes)

Also here's the link to the [Live Demo](https://afterburner.demo.rubyonjets.com/)

If you find Jets interesting, please it a GitHub star [tongueroo/jets](https://github.com/tongueroo/jets). It helps others find out about the project.  I'd appreciate it!