FROM index.alauda.cn/alauda/ubuntu

MAINTAINER Komey <lmh5257@live.cn>

ADD . /home/file/

RUN wget -O emqttd.zip http://emqtt.io/static/brokers/emqttd-ubuntu64-0.9.0-alpha-20150709.zip


RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip


RUN unzip emqttd.zip  -d /home/file/ && cp -f /home/file/emqttd.config  /home/file/emqttd/etc && chmod +x /home/file/*.sh  && rm /.root_passwd_set


EXPOSE 1883 
EXPOSE 8883
EXPOSE 8083

CMD ["/home/file/run.sh"]
