# Start from an official Python image
FROM python:3.12

# Install the Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose port 5001 for the app
EXPOSE 5001

