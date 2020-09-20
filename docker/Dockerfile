FROM jekyll/jekyll:4 AS builder

COPY ./ /srv/jekyll

RUN jekyll build -d /tmp/_site


FROM nginx:stable-alpine

RUN rm /etc/nginx/conf.d/*
COPY docker/nginx.conf /etc/nginx/conf.d/site.conf

COPY --from=builder /tmp/_site /srv/site
