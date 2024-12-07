# Use the official Python image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy project files to the container
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y gcc libpq-dev

# Install Python dependencies (from virtual environment's requirements.txt)
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the Django development server port
EXPOSE 8000

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
