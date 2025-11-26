FROM python:3.9-slim

WORKDIR /app

COPY todo.py .

ENTRYPOINT ["python", "todo.py"]
