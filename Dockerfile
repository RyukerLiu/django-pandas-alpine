FROM python:3.7-alpine

ARG PIP3="/root/site/bin/pip3"


RUN apk update --no-cache && \
    apk add --no-cache python3-dev libstdc++ && \
    apk add --no-cache g++ && \
    apk add --no-cache postgresql-client && \
    apk add --no-cache postgresql-dev && \
    apk add --no-cache bash && \
    apk add --no-cache gfortran && \
    apk add --no-cache gettext && \
    apk add --no-cache gettext-dev && \
    apk add --no-cache freetype-dev && \
    apk add --no-cache openblas-dev && \
    apk add --no-cache libffi-dev && \
    apk add --no-cache libpng-dev && \
    apk add --no-cache jpeg-dev && \
    apk add --no-cache zlib-dev && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN python3.7 -m venv /root/site
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
  
  
