FROM ruby:3.4-bookworm
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    libvips 
WORKDIR /myapp
COPY Gemfile Gemfile.lock /myapp/
RUN bundle install
