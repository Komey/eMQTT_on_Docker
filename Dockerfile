FROM index.alauda.cn/alauda/ubuntu

MAINTAINER Komey <lmh5257@live.cn>

ADD . /home/file/

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip

RUN unzip /home/file/emqtt.zip


EXPOSE 1883 
EXPOSE 8883
EXPOSE 8083

CMD ["/home/file/run.sh"]
