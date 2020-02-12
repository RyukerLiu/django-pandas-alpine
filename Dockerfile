FROM python:3.8.1-slim-buster
LABEL maintainer="Rosdyana Kusuma <rosdyana.kusuma@gmail.com>"
ARG PIP3="/root/site/bin/pip3"


RUN apt-get update && apt-get install -qq -y  build-essential --no-install-recommends && \
    apt-get install -qq -y build-essential --no-install-recommends && \
    apt-get install -qq -y postgresql-client --no-install-recommends && \
    apt-get install -qq -y bash --no-install-recommends && \
    apt-get install -qq -y gettext --no-install-recommends

RUN python3.8 -m venv /root/site
RUN ${PIP3} install -U pip
RUN ${PIP3} install cython && \
  ${PIP3} install numpy && \
  ${PIP3} install django && \
  ${PIP3} install django-webpack-loader && \
  ${PIP3} install django-cors-headers && \
  ${PIP3} install django-environ && \
  ${PIP3} install django-storages && \
  ${PIP3} install boto3 && \
  ${PIP3} install djangorestframework-csv && \
  ${PIP3} install drf-flex-fields && \
  ${PIP3} install django-phonenumber-field && \
  ${PIP3} install djangorestframework && \
  ${PIP3} install phonenumbers && \
  ${PIP3} install google-api-python-client && \
  ${PIP3} install oauth2client && \
  ${PIP3} install google-ads && \
  ${PIP3} install request && \
  ${PIP3} install gunicorn && \
  ${PIP3} install whitenoise && \
  ${PIP3} install pandas && \
  ${PIP3} install Pillow && \
  ${PIP3} install grpcio && \
  ${PIP3} install facebook_business && \
  ${PIP3} install opencv-python
  
  
