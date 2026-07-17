# Use the official NGINX lightweight image from Docker Hub
FROM nginx:alpine

# Clean up default NGINX website files (optional but recommended)
RUN rm -rf /usr/share/nginx/html/*

# Copy your local static website files into the NGINX folder
COPY ./dist /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX in the foreground so the container stays running
CMD ["nginx", "-g", "daemon off;"]
