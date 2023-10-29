# Use the official Python base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and any other necessary files
COPY app.py /app/

# Install any Python dependencies
RUN pip install -r requirements.txt

# Command to run the Python script
CMD ["python", "app.py"]
