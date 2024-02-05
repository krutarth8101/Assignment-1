# Use an official Python runtime as a parent image
FROM ubuntu:20.04

# Update and install dependencies
RUN set -xe \
    && apt-get update -y \
    && apt-get install -y python3-pip \
    && apt-get install -y mysql-client 

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Display the content of the current directory for debugging
RUN ls -l

# Upgrade pip and install dependencies from requirements.txt
RUN pip install --upgrade pip
# Display the content of requirements.txt for debugging
RUN cat dockerfiles/requirements.txt

# Upgrade pip and install dependencies from requirements.txt
RUN pip install --upgrade pip && pip install -r dockerfiles/requirements.txt


# Expose port 8080
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run app.py when the container launches
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
