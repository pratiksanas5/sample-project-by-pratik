FROM ubuntu:latest
RUN apt-get update \
&& apt install nodejs -y &&\
apt install npm -y
RUN mkdir new
COPY node-hello new
COPY startupscript.sh /
RUN chmod +x /startupscript.sh
EXPOSE 3000
WORKDIR new
ENTRYPOINT ["/startupscript.sh"]
