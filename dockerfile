# Use the official Python 3.12.1 image as a base
FROM python:3.12.1-slim

# Set working directory
WORKDIR /app

# Copy dependency definitions
COPY requirements.txt .

# Install dependencies
RUN python.exe -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the FastAPI application code
COPY ./app ./app

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run the FastAPI server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
