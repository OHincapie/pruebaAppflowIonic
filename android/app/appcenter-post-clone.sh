#!/usr/bin/env bash

# fail if any command fails
set -e
# debug log
set -x

# Required nodeJS version
NODE_VERSION=16.15.0

#!/usr/bin/env bash
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install yarn -g
sudo npm install -g ionic
cd ../..
npm i
ionic build
npx cap sync