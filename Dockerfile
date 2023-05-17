# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app directory into the container
COPY pythonBE/helsinkiCityBike /app

# Set the environment variables, if necessary
ENV FLASK_APP=helsinkiCityBike/app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which your Flask app runs
EXPOSE 5000

# Run the Flask app when the container starts
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]