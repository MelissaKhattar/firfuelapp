# Use a lightweight NGINX image to serve the HTML file.
# NGINX is an excellent web server for serving static files.
FROM nginx:alpine

# Copy your HTML file and any other static assets (like CSS, JS)
# from your local directory to the NGINX web server directory.
# This assumes your main HTML file is named 'index.html'
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world, which is the default port for NGINX.
EXPOSE 80

# The NGINX server will automatically start when the container runs.
# This is the default CMD for the nginx:alpine image, so it's not
# strictly necessary to add it, but it's good practice to be explicit.
CMD ["nginx", "-g", "daemon off;"]
