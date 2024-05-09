FROM ruby

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

# Configure GPG signing
RUN apt-get update && apt-get -y install gnupg2

# Configure RubyGems
RUN gem install bundler && bundle install