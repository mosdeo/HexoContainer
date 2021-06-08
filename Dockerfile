FROM node:latest

# init
WORKDIR /blog
# COPY ./ /blog

# install hexo
RUN npm install -g npm@7.11.2
RUN npm install hexo-cli -g

# create data volume
VOLUME /blog
WORKDIR /blog

RUN npm install hexo-deployer-git --save
RUN hexo init && npm install

# hexo default port
EXPOSE 4001