 # Introduction
Appd instrumentation to monitor a Py-flask app running using gunicorn.

**Pre-requisites**:
Install docker

## How to use

1. Download & unzip py-gunicorn-appd.zip
2. Update appd config in appdynamics.cfg
3. ```shell
    docker build . -t guni/hello-world
   ```

## How to Run
Once build is done, you can then start the container with:  
```shell 
docker run -p 8003:8003 guni/hello-world
```

Open http://localhost:8003 in a browser,it should be available.

Have fun!



