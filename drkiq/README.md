# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : `2.7.2`

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite
```
gem 'rspec-rails'
docker-compose run drkiq rails g rspec:install
docker-compose run drkiq rails g model Post name:string comments_count:integer 
docker-compose run drkiq rails g model Comment content:string post:references 
docker-compose run drkiq bundle exec rspec
```
* Additional Gems :  guard-rspec to automatise test launch
```
gem 'guard-rspec', require: false
bundle  exec guard init rspec
guard
```
* Additional Gems :  factory_bot_rails to generate Model autotically and with fake data
```
gem 'factory_bot_rails'
rails g factory_bot:model Post
rails g factory_bot:model Comment
```
* Additional Gems :  factory_bot_rails to generate Model autotically and with fake data
```
gem database_cleaner
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Build :
    To rebuild all images you must use `docker-compose build` or `docker-compose up --build`.
  
    To rebuild only one image use `docker-compose build <service_name>`
* Additionnal Gems from rails new:
```
gem 'unicorn', '~> 5.5.5'
gem 'pg', '~> 1.2.2'
gem 'sidekiq', '~> 6.1', '>= 6.1.3'
gem 'redis-rails', '~> 5.0.2'

gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'simple_form'
gem 'rspec-rails'
gem 'guard-rspec', require: false
gem 'factory_bot_rails'
```