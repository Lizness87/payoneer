# pull official base image
FROM python:3.9.5-slim-buster
LABEL maintainer="Liz Miller <elizabethmiller.lm@gmail.com>"
# Set working directory
WORKDIR /app
# copy project
COPY . /app
# install dependencies
RUN pip3 install -r requirements.txt
# assign execution permission to gunicorn sh file 
RUN chmod +x ./gunicorn_starter.sh
ENTRYPOINT ["./gunicorn_starter.sh"]