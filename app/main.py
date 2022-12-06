from flask import Flask, request, Response 
from prometheus_client import Counter, generate_latest

REQUEST_COUNT = Counter("app_request_counter", "Total Number of Requests made on Application")

app = Flask(__name__)

@app.route('/')
def hello_world():
  REQUEST_COUNT.inc()
  return "Hello World, This is from Docker WSGI"

@app.route('/metrics')
def metrics():
  return Response(generate_latest(), 200, mimetype='plain/text')

if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5001, debug=True)