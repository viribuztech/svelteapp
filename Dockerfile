# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the app.py file into the container
COPY . .

# Install any necessary dependencies
RUN pip install flask

# Expose the port that the Flask app will run on
EXPOSE 5000

# Set the entrypoint command to run the app.py file
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
