FROM nginx:alpine

# Copy the HTML file to the Nginx html directory
COPY *.html /usr/share/nginx/html/
COPY /assets/ /usr/share/nginx/html/assets/

# Create images directory
#RUN mkdir -p /usr/share/nginx/html/images

# Expose port 80
EXPOSE 17441

# Set proper permissions
RUN chmod 644 /usr/share/nginx/html/

# Use a custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]