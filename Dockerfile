FROM tiangolo/uwsgi-nginx-flask:python3.9

<<<<<<< HEAD
FROM tiangolo/uwsgi-nginx-flask:python3.9

COPY . /app

WORKDIR /app

=======
COPY . /app

WORKDIR /app

>>>>>>> 788c206b7f176bd760206166992d817569b1182f
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 5001

ENTRYPOINT [ "python" ]

<<<<<<< HEAD
CMD ["app/app.py"]
=======
CMD ["app/main.py"]
>>>>>>> 788c206b7f176bd760206166992d817569b1182f
