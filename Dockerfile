FROM python:stretch

COPY . /main

WORKDIR /main

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8000", "main:APP"]


