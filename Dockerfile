FROM python:3-alpine3.10
LABEL author="me"
LABEL project="learning"
RUN mkdir /flask-hello-world
ADD . /flask-hello-world
RUN cd /flask-hello-world && \
    pip3 install flask
EXPOSE 5000
WORKDIR  /flask-hello-world
CMD ["flask","run","-h","0.0.0.0"] 
