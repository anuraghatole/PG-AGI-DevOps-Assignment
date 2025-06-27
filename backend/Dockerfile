# Stage 1: Build environment
FROM python:3.11-slim AS builder

WORKDIR /app

# Install dependencies early to leverage Docker caching
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Stage 2: Final image
FROM python:3.11-slim

WORKDIR /app

COPY --from=builder /usr/local /usr/local
COPY app ./app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
