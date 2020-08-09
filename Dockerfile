FROM python:3.6.8-slim

LABEL maintainer="TEAM HACK ELITE"

# App setup
COPY . /whatsapp-analyser
WORKDIR /whatsapp-analyser
RUN pip3 install --upgrade pip
RUN pip3 install -e .

EXPOSE 5000

CMD ["wapp-analyzer", "run"]
