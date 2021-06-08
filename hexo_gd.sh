docker rm hexo-server -f
docker run -i --rm --name hexo-server -p 4001:4000 -v /Users/lky/mosdeo_github_io/:/blog  mosdeo/hexo /bin/bash << EOF
    # hexo -v
    # hexo g
    rm -rf .deploy_git
    hexo d
EOF