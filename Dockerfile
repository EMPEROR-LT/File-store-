FROM python:3.10.8-slim-buster

RUN apt-get update && apt-get install -y git

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -r /requirements.txt

WORKDIR /VJ-File-Store
COPY . /VJ-File-Store

CMD ["python", "bot.py"]
