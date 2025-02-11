#FROM python:3.8-slim-buster

#WORKDIR /app

#COPY requirements.txt .
#RUN pip3 install --no-cache-dir -r requirements.txt



#COPY . .

#EXPOSE 5000

#CMD ["python3", "-m", "flask", "run" ,"--host:0.0.0.0"]


# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Set the command to run the Flask app
CMD ["python", "app.py","--host=0.0.0.0"]