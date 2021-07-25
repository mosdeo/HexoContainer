docker rm mosdeo_hexo -f
docker run -i --rm --name mosdeo_hexo -p 4001:4000 -v /Users/lky/mosdeo_github_io/:/app/blog  mosdeo/hexo /bin/bash << EOF
    cd /app/blog
    hexo g
    hexo d
EOF