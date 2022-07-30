FROM python:3.8.6-buster


COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY model.joblib /model.joblib
COPY TaxiFareModel /TaxiFaremodel
COPY api /api

CMD uvicorn api.fast:app --host 0.0.0.0
