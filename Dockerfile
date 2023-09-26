# Use an official base image from Docker Hub
FROM node:latest

# Set any environment variables if needed
ENV APP_HOME /app

# Create the working directory inside the container
WORKDIR $APP_HOME

# Copy the application code from your Jenkins workspace into the container
COPY . .

# Install any dependencies or run build commands as required
RUN npm install

# Expose any ports your application listens on
EXPOSE 80

# Define the command to start your application
CMD ["node", "app.js"]
