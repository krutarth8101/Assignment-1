# Use an official Python runtime as a parent image
FROM ubuntu:20.04

# Update and install dependencies
RUN set -xe \
    && apt-get update -y \
    && apt-get install -y python3-pip \
    && apt-get install -y mysql-client 

# Set the working directory to /app
WORKDIR /app
COPY . /app

# Display the content of the current directory for debugging


# Upgrade pip and install dependencies from requirements.txt
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Define environment variable


# Run app.py when the container launches
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
