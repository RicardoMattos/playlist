FROM python:3.7-stretch

WORKDIR /home/app

COPY ./requirements.txt /home/app/requirements.txt
RUN pip install -r requirements.txt

COPY . /home/app/

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]