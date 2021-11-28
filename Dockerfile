
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip && pip3 install --no-cache rasa==2.8.1 --use-feature=2020-resolver
ADD . /main/
RUN chmod +x /services.sh
CMD /services.sh

FROM continuumio/anaconda3:4.4.0
#COPY . /usr/flask_api/
EXPOSE 5000
WORKDIR /usr/flask_api/
RUN pip install -r requirements.txt 
CMD mongoDB
CMD rasa run --credentials credentials.yml
CMD rasa run actions
CMD python main.py
