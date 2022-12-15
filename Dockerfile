# This is docker file for Custom prometheus Docker Application Instrumentation 

FROM tiangolo/uwsgi-nginx-flask:python3.9

COPY . /app

WORKDIR /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 5001

ENTRYPOINT [ "python" ]

CMD ["app/app.py"]