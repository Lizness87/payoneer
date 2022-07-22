#!/bin/bash
#We are telling Gunicorn to spawn 2 worker processes, running 2 threads each and binding a port 
gunicorn --chdir . counter-service:app -w 2 --threads 2 -b 0.0.0.0:5000