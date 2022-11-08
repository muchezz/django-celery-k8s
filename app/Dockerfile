# # pull official base image
# FROM python:3.9.5-alpine

# # set work directory
# WORKDIR /usr/src/app

# # set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # install dependencies
# RUN pip install --upgrade pip
# COPY ./requirements.txt /usr/src/app/requirements.txt
# RUN pip install -r requirements.txt

# # copy entrypoint.sh
# COPY ./entrypoint.sh /usr/src/app/entrypoint.sh

# # copy project
# COPY . /usr/src/app/
# RUN ls -a
# # RUN chmod +x /entrypoint.sh
# # run entrypoint.sh
# # ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
# CMD ["manage.py" ]

FROM python:3.9.5-alpine


ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache jpeg-dev postgresql-client 
# RUN apk add install -y --no-install-recommends  
RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
    gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev

RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps


RUN mkdir /app
COPY . /app
WORKDIR /app