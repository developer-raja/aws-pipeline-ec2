#!/bin/bash
sudo chmod -R 777 /home/ec2-user/testing-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/testing-app


#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/NVM.sh" #loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#install noe modules
npm install

#start our app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &