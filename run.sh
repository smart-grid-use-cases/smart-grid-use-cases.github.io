git config --local core.longpaths true
git submodule sync --recursive
git submodule update --init --recursive
npm install -D --save autoprefixer
npm install -D --save postcss-cli
hugo
hugo --bind 0.0.0.0 server
