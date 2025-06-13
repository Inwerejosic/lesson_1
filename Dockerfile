# Pull Base Image
FROM python:3.10.4-slim-bullseye

# Set Environment Variables
ENV PIP_DISABLE_PIP_VERSION 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFEERED 1

# Set working directory
WORKDIR /code

# Install Dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Move project in
COPY  . .