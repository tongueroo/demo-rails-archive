FROM ruby:2.5.0

RUN apt-get update && \
  apt-get install -y \
    build-essential \
    nodejs && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
