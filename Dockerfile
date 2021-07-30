FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt install unzip -y
RUN apt-get install python3-dev default-libmysqlclient-dev build-essential -y
WORKDIR /opt/cavisson/netdiagnostics
ADD netdiagnostics.4.6.1.53.tar.gz .
COPY ndsettings.conf /opt/cavisson/netdiagnostics/config 
WORKDIR /django
ADD ./ /django
RUN pip install -r requirements.txt
RUN bash install.sh python3
RUN chmod +x entrypoint.sh
ENTRYPOINT ["bash", "entrypoint.sh"]

