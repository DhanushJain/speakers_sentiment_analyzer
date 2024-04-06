# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Install Git
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Clone your desired repository
COPY . /app/speakers_sentiment_analyzer

# Change the working directory to the cloned repository
WORKDIR /app/speakers_sentiment_analyzer

# Copy the requirements file into the container at /app
#COPY requirements.txt /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8501 to the outside world
EXPOSE 8501

# Healthcheck for the container
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

# Set the entry point for the container
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
