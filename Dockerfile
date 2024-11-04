# Start from an official Python image
FROM python:3.12

# Install the Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose port 8501 for the app
EXPOSE 8501

# Set the command to run the Streamlit app
# CMD ["streamlit", "run", "app.py", "--server.port", "8501", "--server.address", "0.0.0.0"]

