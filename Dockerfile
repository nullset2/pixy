FROM ruby:2.7.7

WORKDIR /app
ADD . /app
RUN gem install bundler:1.14.3
RUN bundle install --system

ENV NODE_VERSION=18.12.0
RUN apt install -y imagemagick
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
EXPOSE 3000
CMD bundle exec puma

