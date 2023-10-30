# Use the official Python base image
FROM python:3.8

# Install system libraries
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and the requirements file to the container
COPY requirements.txt /app/
COPY app.py /app/

# Install Python dependencies from requirements.txt
RUN pip install -r /app/requirements.txt


# Expose the port that the Flask app will run on
EXPOSE 8000

# Command to run the Python script
CMD ["python", "app.py"]
