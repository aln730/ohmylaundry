# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website into Nginx's html directory
COPY index.html /usr/share/nginx/html/index.html
COPY static /usr/share/nginx/html/static

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]