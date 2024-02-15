# FROM ruby:3.1.2
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
# RUN mkdir /myapp
# WORKDIR /myapp
# ADD Gemfile /myapp/Gemfile
# ADD Gemfile.lock /myapp/Gemfile.lock
# RUN bundle install
# ADD . /myapp

FROM ruby:3.1.2

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . .

# CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["rails", "server"]
