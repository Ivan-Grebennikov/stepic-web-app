#!/bin/bash

sudo ln -fs /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo service nginx restart

#gunicorn access rights to pid file directory
sudo mkdir -p /var/run/gunicorn
sudo chown "$(id -un):$(id -gn)" /var/run/gunicorn

#gunicorn access rights to log directory
sudo mkdir -p /var/log/gunicorn
sudo chown "$(id -un):$(id -gn)" /var/log/gunicorn

if ! [[ "$(kill -HUP "$(cat /var/run/gunicorn/hello.pid)")" ]]; then
    gunicorn --config ./etc/gunicorn.conf.py hello:wsgi_application
fi
