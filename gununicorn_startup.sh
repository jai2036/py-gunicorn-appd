#!/bin/sh

#gunicorn -w 2 --threads 2 -b 0.0.0.0:8003 app:app

# telling Gunicorn to spawn 2 worker processes, 
# running 2 threads each. We are also accepting connections from outside, 
# and overriding Gunicorn's default port (8000).


# Using appdynamics

nohup pyagent run -c appdynamics.cfg -- gunicorn -w 2 --threads 2 -b 0.0.0.0:8003 app:app