import multiprocessing

bind = '0.0.0.0:8080'
workers = multiprocessing.cpu_count() * 2 + 1
daemon = True
pidfile = "/var/run/gunicorn/hello.pid"
accesslog = "/var/log/gunicorn/accesslog"
errorlog = "/var/log/gunicorn/errorlog"
