FROM ubuntu:latest
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install sudo wget curl tar zip unzip jq goxkcdpwgen  -y
RUN apt-get upgrade -y
RUN apt install ssh nginx -y
COPY ./setup.sh ./
CMD sed -i 's/\r//' setup.sh && ./setup.sh