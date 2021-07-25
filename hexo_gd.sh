docker rm mosdeo_hexo -f
docker run \
    -i --rm\
    --name mosdeo_hexo -p 4001:4000 \
    -v /Users/lky/mosdeo_github_io/:/app/blog \
    -v /Users/lky/.ssh:/root/.ssh \
    mosdeo/hexo /bin/bash << EOF
    # hexo -v
    # rm -rf .deploy_git
    cd /app/blog
    hexo g
    git config --global user.email "mosdeo@gmail.com"
    git config --global user.name "Lin, Kao-Yuan"
    echo "yes" | hexo d
EOF