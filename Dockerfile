FROM index.alauda.cn/alauda/ubuntu

MAINTAINER Komey <lmh5257@live.cn>

ADD . /home/file/

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip && wget -O emqttd.zip http://emqtt.io/static/brokers/emqttd-ubuntu64-0.13.0-beta-20151108.zip

RUN unzip emqttd.zip  -d /home/file/ && cp -f /home/file/emqttd.config  /home/file/emqttd/etc && chmod +x /home/file/*.sh  && rm -f /.root_passwd_set

EXPOSE 1883 8883 8083 18083 

CMD ["/home/file/run.sh"]
