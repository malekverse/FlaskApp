# Base image with Python
FROM python:3.12-slim

# Working directory inside the container
WORKDIR /app

# Install the Flask dependencies first (better layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# The Flask application listens on port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
