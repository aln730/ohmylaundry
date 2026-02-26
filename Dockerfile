# Use official unprivileged Nginx image
FROM nginxinc/nginx-unprivileged:alpine

# Copy your site (will overwrite default files)
COPY index.html /usr/share/nginx/html/index.html
COPY static /usr/share/nginx/html/static

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]