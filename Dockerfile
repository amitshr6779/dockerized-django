FROM python:3.8
WORKDIR /django
ADD ./ /django
RUN pip install -r requirements.txt
RUN chmod +x entrypoint.sh
ENTRYPOINT ["bash", "entrypoint.sh"]
