# Use the official Python image from the Docker Hub
FROM python:3.12-slim

# Set environment variables
ENV POETRY_VERSION=1.8.3
ENV POETRY_VIRTUALENVS_CREATE=false

# Set the working directory in the container
WORKDIR /app

# Install system dependencies and Poetry
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gcc \
        build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir poetry==$POETRY_VERSION

# Copy the pyproject.toml  files to the container
COPY pyproject.toml poetry.lock ./

# Install dependencies
RUN poetry install --no-root --no-dev

# Copy the rest of your application code to the container
COPY . /app

# Expose the port that Streamlit uses
EXPOSE 8501

# Command to run the application
CMD ["streamlit", "run", "main.py"]