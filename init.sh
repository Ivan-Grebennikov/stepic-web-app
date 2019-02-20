#!/bin/bash

APP_DIR="$(cd "${BASH_SOURCE%/*}" && pwd)"

sudo ln -fs "${APP_DIR}/etc/nginx.conf" /etc/nginx/sites-enabled/stepic-web-app.conf
sudo service nginx restart