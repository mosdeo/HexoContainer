FROM node:latest

# init
WORKDIR /app
# COPY ./ /blog

# install hexo
RUN npm install -g npm@7.11.2
RUN npm install hexo-cli -g

RUN npm install hexo-deployer-git --save
RUN mkdir /app/blog
RUN hexo init /app/blog

# 掛載要在 init 後面，以免 init 時資料夾不是空的，會出錯
# create data volume
VOLUME /app/blog
RUN mkdir -p /app/blog/source/_posts
RUN mkdir -p /app/blog/source/content
VOLUME /app/blog/source/_posts
VOLUME /app/blog/source/content

# 設定掛載 ssh key 的位置
RUN mkdir /root/.ssh
VOLUME /root/.ssh

# hexo default port
EXPOSE 4001