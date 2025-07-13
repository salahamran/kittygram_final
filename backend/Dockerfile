FROM python:3.11-slim

# Set workdir
WORKDIR /app

RUN pip install gunicorn==20.1.0
# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Set default command
CMD ["gunicorn", "kittygram_backend.wsgi:application", "--bind", "0.0.0.0:8000"]
