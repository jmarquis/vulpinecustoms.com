FROM ruby:3.1-alpine

RUN apk add --update --no-cache build-base

RUN gem install jekyll

RUN mkdir -p /opt/web
WORKDIR /opt/web

COPY . ./
RUN bundle install

VOLUME /opt/web
EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve"]
