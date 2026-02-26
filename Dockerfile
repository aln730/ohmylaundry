FROM nginx:alpine

# Make sure Nginx can write to cache/temp
RUN mkdir -p /var/cache/nginx /var/run/nginx \
    && chown -R nginx:nginx /var/cache/nginx /var/run/nginx

# Remove default website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website
COPY index.html /usr/share/nginx/html/index.html
COPY static /usr/share/nginx/html/static

# Expose HTTP port
EXPOSE 80

# Run as unprivileged user
USER nginx

CMD ["nginx", "-g", "daemon off;"]