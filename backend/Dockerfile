FROM python:3.11-slim

# Set workdir
WORKDIR /app


# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Make sure gunicorn is included
# If not, add it manually:
RUN pip install gunicorn

# Copy project
COPY . .

# Set default command
CMD ["gunicorn", "kittygram_backend.wsgi:application", "--bind", "0.0.0.0:8000"]
