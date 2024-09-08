# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the dependencies specified in the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project code into the container
COPY . .

# Expose the port your application runs on (optional)
EXPOSE 8000  # You can change this port to whatever your application uses

# Command to run your application
CMD ["python", "app.py"]
