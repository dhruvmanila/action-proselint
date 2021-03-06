# Container image that runs your code
FROM python:3.8-slim

# Install proselint
RUN pip install --no-cache-dir proselint
 
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Change the mode to executable
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up
ENTRYPOINT [ "/entrypoint.sh" ]
