FROM python:3.8.6-buster

COPY api.py api.py
# COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install fastapi uvicorn
# RUN pip install -r requirements.txt

# COPY model.joblib /model.joblib
# COPY TaxiFareModel /TaxiFaremodel

# CMD uvicorn api.fast:app --host 0.0.0.0
CMD uvicorn api:app --host 0.0.0.0 --port $PORT
