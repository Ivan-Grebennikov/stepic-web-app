#!/bin/bash

sudo ln -fs /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo service nginx restart