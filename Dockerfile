FROM python:3.12-slim

WORKDIR /add

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY add.py .

EXPOSE 8080

CMD ["python", "add.py"]
