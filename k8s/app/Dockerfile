# FROM python:3.9.5-alpine


# ENV PYTHONUNBUFFERED 1
# COPY ./app/requirements.txt /requirements.txt
# RUN apk add --update --no-cache jpeg-dev postgresql-client 
# # RUN apk add install -y --no-install-recommends  
# RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
#     gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev

# RUN pip install -r /requirements.txt
# RUN apk del .tmp-build-deps


# RUN mkdir /app
# COPY /app /app
# WORKDIR /app

# CMD ["python manage.py runserver 0.0.0.0:8000"]

FROM python:3.9-alpine

ENV PYTHONBUFFERED 1

COPY ./app/requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .temp-build-deps \
        && apk add gcc libc-dev linux-headers postgresql-dev \
        && pip install --upgrade pip \
        && pip install -r requirements.txt \
        && apk del .temp-build-deps


RUN mkdir app
WORKDIR /app
COPY /app /app
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]