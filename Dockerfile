FROM ubuntu:18.04

RUN apt-get update 
RUN apt install python3-pip python3-venv make -y
EXPOSE 5000

ADD . /srv
RUN bash -c "cd /srv; make prereq"

CMD /srv/docker-entrypoint.sh
