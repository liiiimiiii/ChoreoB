FROM node:latest
WORKDIR /home/choreouser
COPY files/* /home/choreouser/
ENV PM2_HOME=/tmp
EXPOSE 3000

RUN apt-get update &&\
    npm install -r package.json &&\
    npm install -g pm2 &&\
    addgroup --gid 10001 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup choreo dawn5ky &&\
    usermod -aG sudo dawn5ky &&\
    chmod +x loader.sh nezha-agent rbqray

ENTRYPOINT [ "./loader.sh" ]

USER 10001
