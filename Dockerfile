FROM nginx

## Step 1:
#RUN rm /usr/share/nginx/html/index.html
RUN rm /usr/share/nginx/html/index.html

## Step 2:
# Copy source code to working directory
COPY green /usr/share/nginx/html/
