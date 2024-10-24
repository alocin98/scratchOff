# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML and CSS files to the container
COPY ./test3 /usr/share/nginx/html

# Expose port 80 to be accessible from outside
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

