# Use official unprivileged Nginx image
FROM nginxinc/nginx-unprivileged:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website
COPY index.html /usr/share/nginx/html/index.html
COPY static /usr/share/nginx/html/static

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]