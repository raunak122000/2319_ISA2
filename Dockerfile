# Dockerfile2319

FROM ubuntu:latest

# Install Python and Flask
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask

# Copy application.py to the /opt/app directory
COPY application.py /opt/app/application.py

# Set the environment variable for the Flask app and run it
CMD FLASK_APP=/opt/app/application.py flask run 