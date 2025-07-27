FROM python:3.12.3-slim
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN pip install flask
EXPOSE 8080
CMD ["python", "app.py"]