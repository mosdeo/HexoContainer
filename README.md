# Hexo in Docker

不用在電腦上搞麻煩的 node 與 hexo 環境了，黏糊糊的麻煩東西都到 docker 裡面就好。

## Bash 功能

### build.sh

- 產生安裝好 npm 與 hexo 的 docker 映像

### hexo g && hexo s

- 本地測試、預覽效果用
- 方法1: ```$bash hexo_gs.sh```
- 方法2: ```$docker compose -f docker-compose-gs.yml up```

最後顯示「Hexo is running at http://localhost:4000」是指 docker 內部的 4000 port，不是宿主機的 4000 port。


### hexo clean && hexo g && hexo d

- 部署用
- 方法1: ```$bash hexo_gd.sh```
- 方法2: ```$docker compose -f docker-compose-gd.yml up```

## 路徑（掛載點）說明

- docker image 內部不包含文章、主題等任何數據
- 文章、主題等其他數據，都是在 docker run -v ... 掛載
- ssh key 也是掛載本機的

掛載參數：

```bash
-v <本機blog文件夾絕對路徑>:/app/blog \
-v <本機_posts文件夾絕對路徑>:/app/blog/source/_posts \
-v <本機content文件夾絕對路徑>:/app/blog/source/content \
-v <本機ssh文件夾絕對路徑>:/root/.ssh \
```
