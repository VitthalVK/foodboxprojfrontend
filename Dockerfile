FROM nginx:1.17.1-alpine
COPY /dist/foodbox /usr/share/nginx/html
