FROM node:11-alpine

RUN npm config set registry https://registry.npm.taobao.org --global \
    && npm config set disturl https://npm.taobao.org/dist --global

COPY tools/* /usr/bin/
COPY run.sh /root

WORKDIR /root

ENTRYPOINT [ "/bin/bash", "/root/run.sh" ]