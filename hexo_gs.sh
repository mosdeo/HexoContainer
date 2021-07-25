docker rm mosdeo_hexo -f
docker run \
    -i --rm\
    --name mosdeo_hexo -p 4001:4000 \
    -v /Users/lky/mosdeo_github_io/:/app/blog \
    -v /Users/lky/code_repos/Stories/_posts:/app/blog/source/_posts \
    -v /Users/lky/code_repos/Stories/content:/app/blog/source/content \
    mosdeo/hexo /bin/bash << EOF
    cd /app/blog
    hexo clean
    hexo g
    hexo s
EOF