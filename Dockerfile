FROM python:3.10-slim

# Install system packages needed to build wheels
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       gcc \
       build-essential \
       libffi-dev \
       libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /Code/pysparkapi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 5000
CMD ["python", "main.py"]
