FROM python:3.7-alpine

ARG PIP3="/root/site/bin/pip3"

RUN apk update --no-cache && \
    apk add --virtual \
      .build-deps \
      build-base \
      postgresql-client \
      postgresql-dev \
      nano \
      bash \
      gfortran \
      gettext \
      gettext-dev \
      freetype-dev \
      openblas-dev \
      musl-dev \
      libffi-dev \
      libpng-dev \
      jpeg-dev \
      zlib-dev \
      gcc

RUN python3.7 -m venv /root/site
RUN ${PIP3} install -U pip
RUN ${PIP3} install \
  django \
  django-webpack-loader \
  django-cors-headers \
  django-environ \
  django-storages \
  boto3 \
  djangorestframework-csv \
  drf-flex-fields \
  django-phonenumber-field \
  djangorestframework \
  phonenumbers \
  google-api-python-client \
  oauth2client \
  google-ads \
  request \
  gunicorn \
  whitenoise \
  numpy \
  pandas \
  Pillow \
  grpcio \
  facebook_business
  
