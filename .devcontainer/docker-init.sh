#!/bin/bash 

set -x
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt 
pip install --upgrade pip
webdrivermanager firefox chrome --linkpath /usr/local/bin

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > google-chrome.list
# sudo mv google-chrome.list /etc/apt/sources.list.d/google-chrome.list
# sudo apt-get update && sudo apt-get -yqq install google-chrome-stable

# export DRIVER_VERSION=$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE) && curl --output /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$DRIVER_VERSION/chromedriver_linux64.zip
# sudo unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
# chmod +x /usr/local/bin/chromedriver
sleep infinity
