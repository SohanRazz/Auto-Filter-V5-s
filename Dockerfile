FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Auto-Filter-V5-s
WORKDIR /Auto-Filter-V5-s
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
