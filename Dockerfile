FROM python:3.7
LABEL org.opencontainers.image.source="https://github.com/dknoern/books"

WORKDIR /opt/app

COPY . .

RUN pip install --no-cache-dir -r requirements-prod.txt

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
