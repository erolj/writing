FROM nginx:alpine

# Copy the HTML file to the Nginx html directory
COPY *.html /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.ico /usr/share/nginx/html/
COPY *.webmanifest /usr/share/nginx/html/
COPY /assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 17441

# Set proper permissions
RUN chmod 644 /usr/share/nginx/html/
RUN chmod 644 /usr/share/nginx/html/assets/*

# Use a custom nginx configuration if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]