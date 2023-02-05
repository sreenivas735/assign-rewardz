# Use an official Python image as the base image
FROM python:3.9

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN sudo amazon-linux-extras install ansible2 -y

# install python
RUN yum install python pip -y & pip install boto

# Run the Ansible playbook when the container is started
CMD ["ansible-playbook", "wordpress.yml"]
