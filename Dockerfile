FROM python:3.8-slim

EXPOSE 5000

# Env

# Install pip requirements.
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

ENTRYPOINT ["gunicorn", "app:app"]