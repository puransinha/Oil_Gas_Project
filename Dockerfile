FROM python:3.6.7

ADD . /usr/src/app
#set directoty where CMD will execute

WORKDIR /usr/src/app

COPY requirements.txt ./
# Get pip to download and install requirements:

RUN pip install --no-cache-dir -r requirements.txt

RUN cd /usr/src/app

# default command to execute
CMD python3 app.py
