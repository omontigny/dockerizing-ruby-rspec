# My First Dockerizing RubyOnRails App 

## Local setup

Prepare environment, for dev version you can use the example environment:

```bash
$ cp env-example .env
```

Start the server:

```bash
$ docker-compose up --build
```

Browse http://localhost:8020

## Production image

Prepare production environment, set you production values:

```bash
$ cp env-example .env
```

Build two images:
®
- drkiq: application
- nginx: http server

```bash
$ docker build --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -t $DOCKER_USERNAME/dockerizing-ruby-drkiq:latest -f Dockerfile.production .
$ docker build --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -t $DOCKER_USERNAME/dockerizing-ruby-nginx:latest -f Dockerfile.nginx .
```
Common rails commands
```docker-compose run yarn add bootstrap
 docker-compose run drkiq rails add bootstrap
 docker-compose run drkiq rails bootstrap:install
 docker-compose run drkiq yarn add bootstrap
 docker-compose run drkiq rails bundle install
 docker-compose run drkiq rails gem install sidekiq
 docker-compose run drkiq rails generate simple_form:install --bootstrap
 docker-compose run drkiq rails g model books name:string description:string author:string image_url:string nb_page:bigint editor:string parution_date:date isbn_10:string isbn_13:string original_price:float
 docker-compose run drkiq rails db:migrate
 docker-compose run drkiq rails g controller books
 docker-compose run drkiq rails db:seed
 docker-compose run drkiq rails test
 docker-compose run drkiq rails  db:test:prepare
 docker-compose run drkiq rails test
 ```
