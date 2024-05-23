# Use the official Nginx image from the Docker Hub
FROM nginx

# Copy the static website files to the appropriate directory in the container
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
