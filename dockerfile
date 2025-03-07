FROM ruby:3.4.2-bookworm

WORKDIR /var/www

COPY ./src /var/www

RUN bundle config --local set path 'vendor/bundle'
RUN bundle install 
#RUN bundle add rackup puma
RUN gem install rackup puma 

#RUN gem install webrick
#RUN apt-get update && apt-get install -y bash 
# ↑必用？
# CMD ["ruby","./src/Gemfile.rb"]

#CMD ["/bin/bash"]
CMD ["bundle","exec","ruby","app.rb"]


