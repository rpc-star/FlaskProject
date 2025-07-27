FROM python:3.12.3-slim
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
