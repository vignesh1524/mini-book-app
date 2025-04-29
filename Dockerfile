# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the entire app
COPY . .

# Expose port 80 (optional but good practice)
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
