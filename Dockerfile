FROM python:3.7.3-slim
RUN apt-get update && apt-get install -y procps
COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY . /app
WORKDIR /app
RUN chmod +x gununicorn_startup.sh 
EXPOSE 8003
ENTRYPOINT ["./gununicorn_startup.sh"]

# docker build . -t guni/hello-world
# docker run -p 8003:8003 guni/hello-world
# http://localhost:8003