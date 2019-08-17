FROM nginx:1.17.1-alpine
ARG BUILD_TAG
ENV BUILD_TAG=${BUILD_TAG} 
RUN echo `date` > /usr/share/nginx/html/index.html \
    && echo ${BUILD_TAG} >> /usr/share/nginx/html/index.html
