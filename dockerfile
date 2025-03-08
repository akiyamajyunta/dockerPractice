FROM ruby:3.4.2-bookworm

WORKDIR /var/www

COPY ./src /var/www

RUN bundle config --local set path 'vendor/bundle'
RUN bundle install 


RUN gem install rackup puma 


CMD ["bundle","exec","ruby","app.rb"]


