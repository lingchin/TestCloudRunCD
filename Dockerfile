FROM python:3.8.6-buster

COPY api.py api.py

RUN pip install --upgrade pip
RUN pip install fastapi uvicorn

CMD uvicorn api:app --host 0.0.0.0 --port $PORT
