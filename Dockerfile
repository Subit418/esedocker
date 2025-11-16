# Serve static site with Nginx
FROM nginx:alpine

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all website files to the Nginx web root directory
COPY . /usr/share/nginx/html

# Expose both default (80) and secondary (8081) HTTP ports
EXPOSE 80 8081

# Nginx runs automatically on container start (no CMD needed)