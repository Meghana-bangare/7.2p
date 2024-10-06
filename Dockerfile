# Your Solution
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY ./requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY ./ ./

# Command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "9000"]
