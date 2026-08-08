FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
RUN touch /var/run/nginx.pid && chown -R nginx:nginx /var/run/nginx.pid && chown -R nginx:nginx /var/cache/nginx
USER nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
