# Stage 1: Build & Dependencies
FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# Stage 2: Minimal Runtime
FROM python:3.11-slim AS runner
WORKDIR /app

# Copy installed packages from builder
COPY --from=builder /root/.local /root/.local
COPY ./app ./app

ENV PATH=/root/.local/bin:$PATH
EXPOSE 8000

# Non-root user safety configuration
RUN useradd -u 8888 appuser && chown -R appuser /app
USER appuser

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]