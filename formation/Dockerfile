FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html

# Copy your config and website
COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY site /usr/share/nginx/html
