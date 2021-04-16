FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV APP_HOME=/code
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY . $APP_HOME

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN chmod a+x ./entrypoint.sh
ENTRYPOINT ["bash","entrypoint.sh"]
