# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy your static website files to the web server's root directory
COPY . /usr/share/nginx/html

# Expose port 80, which is the default HTTP port for Nginx
EXPOSE 80

# Define an entry point to start the web server when the container runs
CMD ["nginx", "-g", "daemon off;"]
