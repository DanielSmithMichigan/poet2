FROM amazon/aws-lambda-python:3.8
# COPY app.js package.json  /var/task/

# Install NPM dependencies for function
RUN pip install gym
RUN yum install -y git
RUN git clone https://github.com/DanielSmithMichigan/poet2.git /var/task/

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
# CMD [ "app.handler" ]  