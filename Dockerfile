FROM arm32v7/python:2.7-slim

RUN apt-get update && apt-get -y install curl
RUN curl -fsSLo google-cloud-sdk.tar.gz 
https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-235.0.0-linux-x86.tar.gz
RUN tar zxf google-cloud-sdk.tar.gz google-cloud-sdk
RUN rm google-cloud-sdk.tar.gz
RUN ./google-cloud-sdk/install.sh
ENV PATH="/google-cloud-sdk/bin:${PATH}"

WORKDIR /app
